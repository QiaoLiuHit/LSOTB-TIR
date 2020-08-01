function genPerfMat(seqs, trackers, evalType, nameTrkAll, perfMatPath, results_Path)

pathAnno = './anno/';
numTrk = length(trackers);

thresholdSetOverlap = 0:0.05:1;
thresholdSetError = 0:50;
Norm_thresholdSetError = thresholdSetError/100;

%path of tracker's results
rpAll= results_Path;

center_error20 = zeros(numTrk, length(seqs));
overlaps50 = zeros(numTrk, length(seqs));
seq_names = {};
for idxSeq=1:length(seqs)
    s = seqs{idxSeq};
    seq_names{idxSeq} = s.name;
    s.len = s.endFrame - s.startFrame + 1;
    s.s_frames = cell(s.len,1);
    nz	= strcat('%0',num2str(s.nz),'d'); %number of zeros in the name of image
    for i=1:s.len
        image_no = s.startFrame + (i-1);
        id = sprintf(nz,image_no);
        s.s_frames{i} = strcat(s.path,id,'.',s.ext);
    end
    
    rect_anno = dlmread([pathAnno s.name '.txt']);
    numSeg = 20;
    [subSeqs, subAnno]=splitSeqTRE(s,numSeg,rect_anno);
    
    nameAll=[];
    
    for idxTrk=1:numTrk
        
        t = trackers{idxTrk};
        load([rpAll s.name '_' t.name '.mat'])
        disp([s.name ' ' t.name]);
        lenALL = 0;
        
        idxNum = 1;
        anno=subAnno{1};
        
        successNumOverlap = zeros(idxNum,length(thresholdSetOverlap));
        successNumErr = zeros(idxNum,length(thresholdSetError));
        
        for idx = 1:idxNum
            
            res = results{idx};
            len = size(anno,1);
            if isempty(res.res)
                break;
            end
            
            if ~isfield(res,'type')&&isfield(res,'transformType')
                res.type = res.transformType;
                res.res = res.res';
            end
            
            % calculate overlap and center error
            [~, ~, errCoverage, errCenter] = calcSeqErrRobust(res, anno);
            
            % calculate normszlied overlap and center error 
            [~, ~, ~, errCenter_norm] = calcSeqErrRobust_norm(res, anno);
            
            % calculate succcess frames in each overlap threshold
            for tIdx=1:length(thresholdSetOverlap)
                successNumOverlap(idx,tIdx) = sum(errCoverage >thresholdSetOverlap(tIdx));
            end
            
            % calculate succcess frames in each center-error threshold
            for tIdx=1:length(thresholdSetError)
                successNumErr(idx,tIdx) = sum(errCenter <= thresholdSetError(tIdx));
            end
            
            % calculate succcess frames in each center-error threshold
            for tIdx=1:length(Norm_thresholdSetError)
                successNumErr_norm(idx,tIdx) = sum(errCenter_norm <= Norm_thresholdSetError(tIdx));
            end

            lenALL = lenALL + len;
            
        end
        
        % calculate success rate 
        aveSuccessRatePlot(idxTrk, idxSeq,:) = successNumOverlap/(lenALL+eps);
        aveSuccessRatePlotErr(idxTrk, idxSeq,:) = successNumErr/(lenALL+eps);
        aveSuccessRatePlotErr_norm(idxTrk, idxSeq,:) = successNumErr_norm/(lenALL+eps);
        %  success rate of < 20 pixels 
        center_error20(idxTrk, idxSeq) = aveSuccessRatePlotErr(idxTrk, idxSeq,21);
        % success rate of > 0.5 overlap 
        overlaps50(idxTrk, idxSeq) = aveSuccessRatePlot(idxTrk, idxSeq,11);
    end
end
%
dataName1=[perfMatPath 'aveSuccessRatePlot_' num2str(numTrk) 'alg_overlap_' evalType '.mat'];
save(dataName1,'aveSuccessRatePlot','nameTrkAll');

dataName2=[perfMatPath 'aveSuccessRatePlot_' num2str(numTrk) 'alg_error_' evalType '.mat'];
aveSuccessRatePlot = aveSuccessRatePlotErr;
save(dataName2,'aveSuccessRatePlot','nameTrkAll');
if strcmp(evalType, 'OPE')
    dataName3=[perfMatPath 'overlap50andcentererror20_' num2str(numTrk)  '.mat'];
    save(dataName3,'center_error20','overlaps50', 'seq_names');
end

%save normalized success rate
dataName4 = [perfMatPath 'aveSuccessRatePlot_' num2str(numTrk) 'alg_norm_error_' evalType '.mat'];
aveSuccessRatePlot = aveSuccessRatePlotErr_norm;
save(dataName4,'aveSuccessRatePlot','nameTrkAll');
