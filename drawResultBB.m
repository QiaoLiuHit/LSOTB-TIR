close all
clear
clc
warning off all;

addpath('./util');

pathRes = './results/results_OPE_all/';% The folder containing the tracking results
pathDraw = './tmp/BBS_MMNet/';% The folder that will stores the images with overlaid bounding box

rstIdx = 1;

seqs=configSeqs;

trks=configTrackers;

if isempty(rstIdx)
    rstIdx = 1;
end

LineWidth = 3;

plotSetting; % set linestyle

lenTotalSeq = 0;
resultsAll=[];
trackerNames=[];
for index_seq=1:length(seqs)
    seq = seqs{index_seq};
    seq_name = seq.name;
    
%     fileName = [pathAnno seq_name '.txt'];
%     rect_anno = dlmread(fileName);
    seq_length = seq.endFrame-seq.startFrame+1; %size(rect_anno,1);
    lenTotalSeq = lenTotalSeq + seq_length;
    
    for index_algrm=1:length(trks)
        algrm = trks{index_algrm};
        name=algrm.name;
        trackerNames{index_algrm}=name;
               
        fileName = [pathRes seq_name '_' name '.mat'];
         if (strcmp(name, 'RMDNet_kcf_sp') )
             fileName = ['.\results\results_OPE_EDRT\' seq_name '_' name '.mat'];
        end
        load(fileName);
        
        res = results{rstIdx};
        
        if ~isfield(res,'type')&&isfield(res,'transformType')
            res.type = res.transformType;
            res.res = res.res';
        end
            
        if strcmp(res.type,'rect')
            for i = 2:res.len
                r = res.res(i,:);
               
                if (isnan(r) | r(3)<=0 | r(4)<=0)
                    res.res(i,:)=res.res(i-1,:);
                    %             results.res(i,:) = [1,1,1,1];
                end
            end
        end

        resultsAll{index_algrm} = res;

    end
        
    nz	= strcat('%0',num2str(seq.nz),'d'); %number of zeros in the name of image
    
    pathSave = [pathDraw seq_name '_' num2str(rstIdx) '/'];
    if ~exist(pathSave,'dir')
        mkdir(pathSave);
    end
   
    for i=1:seq_length
        image_no = seq.startFrame + (i-1);
        id = sprintf(nz,image_no);
        fileName = strcat(seq.path,id,'.',seq.ext);
        
        img = imread(fileName);
        set (gcf,'color','white');
        [w,h,d]=size(img);
       set (gcf,'Position',[100,100,h,w]);
       set (gca,'Position',[0,0,1,1]);
       imshow(img);
          
        idnew=id(5:end);% 8 char change  to 4 char 00000001--->0001
        text(10, 15, ['#' idnew], 'Color','y', 'FontWeight','bold', 'FontSize',30);
        legends_handle =[];
        legends_desc = {};
        for j=1:length(trks)
            disp(trks{j}.name)            
           
            LineStyle = plotDrawStyle{j}.lineStyle;
            
            switch resultsAll{j}.type
                case 'rect'

                    rectangle('Position', resultsAll{j}.res(i,:), 'EdgeColor', plotDrawStyle{j}.color, 'LineWidth', LineWidth,'LineStyle',LineStyle);
                    legends_handle(j) = line(NaN,NaN,'LineWidth',LineWidth,'LineStyle',LineStyle,'Color',plotDrawStyle{j}.color);                  
                    legends_desc{j} = trks{j}.namePaper;
                   

                case 'ivtAff'
                    legends_handle(j) = drawbox(resultsAll{j}.tmplsize, resultsAll{j}.res(i,:), 'Color', plotDrawStyle{j}.color, 'LineWidth', LineWidth,'LineStyle',LineStyle);
                     legends_desc{j} = trks{j}.namePaper;
                case 'L1Aff'
                    drawAffine(resultsAll{j}.res(i,:), resultsAll{j}.tmplsize, plotDrawStyle{j}.color, LineWidth, LineStyle);                    
                case 'LK_Aff'
                    [corner c] = getLKcorner(resultsAll{j}.res(2*i-1:2*i,:), resultsAll{j}.tmplsize);
                    hold on,
                    plot([corner(1,:) corner(1,1)], [corner(2,:) corner(2,1)], 'Color', plotDrawStyle{j}.color,'LineWidth',LineWidth,'LineStyle',LineStyle);
                case '4corner'
                    corner = resultsAll{j}.res(2*i-1:2*i,:);
                    hold on,
                    plot([corner(1,:) corner(1,1)], [corner(2,:) corner(2,1)], 'Color', plotDrawStyle{j}.color,'LineWidth',LineWidth,'LineStyle',LineStyle);
                case 'SIMILARITY'
                    warp_p = parameters_to_projective_matrix(resultsAll{j}.type,resultsAll{j}.res(i,:));
                    [corner c] = getLKcorner(warp_p, resultsAll{j}.tmplsize);
                    hold on,
                    plot([corner(1,:) corner(1,1)], [corner(2,:) corner(2,1)], 'Color', plotDrawStyle{j}.color,'LineWidth',LineWidth,'LineStyle',LineStyle);
                otherwise
                    disp('The type of output is not supported!')
                    continue;
            end
        end   
        legend(legends_handle, legends_desc);% tracker legend
        idxx = sprintf('%04d', i);

       % imwrite(frame2im(getframe(gcf)), [pathSave  idxx '.png']);
     
        saveas(gca,[pathSave idxx],'pdf');
        saveas(gca,[pathSave idxx],'png');
        saveas(gca,[pathSave idxx],'fig');
      %  imagesc(saliency_map');
        axis off;
        %imwrite(frame2im(getframe(gcf)), [pathSave  idxx '.png']);
    end
    clf
end
