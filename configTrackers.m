function [trackers]=configTrackers
TIRtrackers={ struct('name','ASLA','namePaper','ASLA'),...
              struct('name','Struck','namePaper','Struck'),...
              struct('name','MIL','namePaper','MIL'),...
              struct('name','L1APG','namePaper','L1APG'),...
              struct('name','TGPR','namePaper','TGPR'),... 
              struct('name','KCF_HOG','namePaper','KCF'),...
              struct('name','DSST','namePaper','DSST'),...
              struct('name','SRDCF','namePaper','SRDCF'),...
              struct('name','BACF','namePaper','BACF'),...
              struct('name','LCT','namePaper','LCT'),...
              struct('name','RPT','namePaper','RPT'),...
              struct('name','Staple','namePaper','Staple'),...
              struct('name','MCCT','namePaper','MCCT'),...
              struct('name','ECO_HC','namePaper','ECO-HC'),...
              struct('name','ECO_tir','namePaper','ECO-stir'),...
              struct('name','MCFTS','namePaper','MCFTS'),...
              struct('name','HSSNet','namePaper','HSSNet'),...
               struct('name','HSSNet_TIR','namePaper','HSSNet-TIR'),...
              struct('name','MLSSNet','namePaper','MLSSNet'),...  
              struct('name','HDT','namePaper','HDT'),...
              struct('name','HCF','namePaper','HCF'),...
              struct('name','Siamese_FC','namePaper','SiamFC'),...
              struct('name','Siamese_FC_TIR','namePaper','SiamFC-TIR'),...
              struct('name','CFNet','namePaper','CFNet'),...
              struct('name','CFNet_TIR','namePaper','CFNet-TIR'),...
              struct('name','DSiam','namePaper','DSiam'),...
              struct('name','SiamFC_tri','namePaper','SiamFC-tri'),...
              struct('name','CREST','namePaper','CREST'),...
              struct('name','VITAL','namePaper','VITAL'),...
              struct('name','MDNet','namePaper','MDNet'),...
              struct('name','ATOM','namePaper','ATOM'),...
              struct('name','SiamMask','namePaper','SiamMask'),... 
              struct('name','SiamRPN++','namePaper','SiamRPN++'),...
              struct('name','UDT','namePaper','UDT'),...
              struct('name','ECO_deep','namePaper','ECO'),...
              struct('name','ECO_deep_TIR','namePaper','ECO-TIR'),...
              struct('name','TADT','namePaper','TADT')};
          
demo_one={  struct('name','ECO_deep_TIR','namePaper','ECO-TIR')};
             
trackers=[TIRtrackers];
