function [aveErrCoverage, aveErrCenter,errCoverage, errCenter] = calcSeqErrRobust_norm(results, rect_anno)

seq_length = results.len;
if strcmp(results.type,'rect')
    for i = 2:seq_length
        r = results.res(i,:);
        r_anno = rect_anno(i,:);
        if (isnan(r) | r(3)<=0 | r(4)<=0)&(~isnan(r_anno))
            results.res(i,:)=results.res(i-1,:);
        end
    end
end

centerGT = [rect_anno(:,1)+(rect_anno(:,3)-1)/2 rect_anno(:,2)+(rect_anno(:,4)-1)/2];

rectMat = zeros(seq_length, 4);
switch results.type
    case 'rect'
        rectMat = results.res;
    case 'ivtAff'
        for i = 1:seq_length
            [rect c] = calcRectCenter(results.tmplsize, results.res(i,:));
            rectMat(i,:) = rect;
        end
    case 'L1Aff'
        for i = 1:seq_length
            [rect c] = calcCenter_L1(results.res(i,:), results.tmplsize);
            rectMat(i,:) = rect;
        end
    case 'LK_Aff'
        for i = 1:seq_length
            [corner c] = getLKcorner(results.res(2*i-1:2*i,:), results.tmplsize);
            rectMat(i,:) = corner2rect(corner);
        end
    case '4corner'
        for i = 1:seq_length
            rectMat(i,:) = corner2rect(results.res(2*i-1:2*i,:));
        end
    case 'affine'
        for i = 1:seq_length
            rectMat(i,:) = corner2rect(results.res(2*i-1:2*i,:));
        end
    case 'SIMILARITY'
        for i = 1:seq_length
            warp_p = parameters_to_projective_matrix(results.type,results.res(i,:));
            [corner c] = getLKcorner(warp_p, results.tmplsize);
            rectMat(i,:) = corner2rect(corner);
        end
end

rectMat(1,:) = rect_anno(1,:);
center = [rectMat(:,1)+(rectMat(:,3)-1)/2 rectMat(:,2)+(rectMat(:,4)-1)/2];

% use normalized precision
center(:,1) = center(:,1)./rect_anno(:,3);
center(:,2) = center(:,2)./rect_anno(:,4);
centerGT(:,1) = centerGT(:,1)./rect_anno(:,3);
centerGT(:,2) = centerGT(:,2)./rect_anno(:,4);

errCenter = sqrt(sum(((center(1:seq_length,:) - centerGT(1:seq_length,:)).^2),2)); % center error

index = rect_anno>0;
idx=(sum(index,2)==4);
tmp = calcRectInt(rectMat(idx,:),rect_anno(idx,:));

errCoverage=-ones(length(idx),1);
errCoverage(idx) = tmp;
errCenter(~idx)=-1;

aveErrCoverage = sum(errCoverage(idx))/length(idx);

aveErrCenter = sum(errCenter(idx))/length(idx);
