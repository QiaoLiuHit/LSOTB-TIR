function [subSeqs, subAnno]=splitSeqTRE(seq,segNum,rect_anno)
%20 segments for each sequences
%first, excluding all the occ/out-of-view frames
%then, sampling

minNum = 20;

fileName = ['initOmit/' seq.name '.txt'];
IdxExclude = [];
if exist(fileName)
    IdxExclude=load(fileName)-seq.startFrame+1;
end
Idx = 1:seq.len;
for j = 1:size(IdxExclude,1)
    Idx(IdxExclude(j,1):IdxExclude(j,2))=0;
end
Idx = Idx(find(Idx>0));

for i=1:length(Idx)
    r = rect_anno(Idx(i),:);
    
    if r(1)<=0 | r(2)<=0 | r(3)<=0 | r(4)<=0 | isnan(sum(r))
        Idx(i) = 0;
    end
end
        
Idx = Idx(find(Idx>0));        
        
for i = length(Idx):-1:1
    if seq.len - Idx(i) + 1 >= minNum
        endSeg = Idx(i);
        endSegIdx = i;
        break;
    end
end

startFrIdxOne = [floor(1:endSegIdx/(segNum-1):endSegIdx) endSegIdx] ;

% endSeg = seq.len-minNum+1;

subAnno=[];
subSeqs=[];

for i = 1:length(startFrIdxOne)
    index = Idx(startFrIdxOne(i));
    subS.path = seq.path;
    subS.nz = seq.nz;
    subS.ext = seq.ext;
    
    subS.startFrame = index+seq.startFrame-1;
    subS.endFrame = seq.endFrame;
        
    subS.len = subS.endFrame - subS.startFrame + 1;

    subS.annoBegin = seq.startFrame;
    subS.init_rect = rect_anno(index,:);
    anno = rect_anno(index:end,:);
    
    subS.s_frames = seq.s_frames(index:end);
    
    subS.name = seq.name;
%     subS.nameIdx = [seq.name '_' num2str(i)];

    subAnno{i} = anno;
    subSeqs{i}=subS;
end
    
