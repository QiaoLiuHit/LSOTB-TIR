close all
clear
clc
warning off all;

addpath('./util');
addpath('./rstEval');
pathRes = '.\results\results_OPE_CVPR13\';% The folder containing the tracking results
pathDraw = '.\tmp\performance\';% The folder that will stores the images with overlaid bounding box
attPath = '.\anno\';
rstIdx = 1;

seqs=configSeqs;

trks=configTrackers;

if isempty(rstIdx)
    rstIdx = 1;
end

LineWidth = 4;

plotSetting;

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
    figure;
    legend('Interpreter', 'none','fontsize',14);
    title(seq_name,'fontsize',16);
    xlabel('Frame Numbers', 'fontsize',16);
    anno = load([attPath seq_name '.txt']);
   for index_algrm=1:length(trks)
        algrm = trks{index_algrm};
        name=algrm.name;
        trackerNames{index_algrm}=name;
               
        fileName = [pathRes seq_name '_' name '.mat'];
         load(fileName);
        res = results{rstIdx};
        
        [aveCoverage, aveErrCenter, errCoverage, errCenter] = calcSeqErrRobust(res, anno);
        
        hold on,
        plot([1:1:seq_length], errCenter,'color', plotDrawStyle{index_algrm}.color, 'LineWidth', LineWidth,'LineStyle', plotDrawStyle{index_algrm}.lineStyle);
       
        
        
   end
   hold off;
   saveas(gcf,[pathDraw seq_name],'png');
end
 close all