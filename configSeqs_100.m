function seqs=configSeqs

%HandHeld subset 34
TIR_H={struct('name','airplane_H_001','path','sequences/airplane_H_001/img/','startFrame',1,'endFrame',1300,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','airplane_H_002','path','sequences/airplane_H_002/img/','startFrame',1,'endFrame',482,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','badger_H_001','path','sequences/badger_H_001/img/','startFrame',1,'endFrame',600,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','bat_H_001','path','sequences/bat_H_001/img/','startFrame',1,'endFrame',270,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','bird_H_001','path','sequences/bird_H_001/img/','startFrame',1,'endFrame',500,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','bird_H_002','path','sequences/bird_H_002/img/','startFrame',1,'endFrame',125,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','bird_H_003','path','sequences/bird_H_003/img/','startFrame',1,'endFrame',710,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','boat_H_001','path','sequences/boat_H_001/img/','startFrame',1,'endFrame',545,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','cat_H_001','path','sequences/cat_H_001/img/','startFrame',1,'endFrame',875,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','cat_H_002','path','sequences/cat_H_002/img/','startFrame',1,'endFrame',150,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','cow_H_001','path','sequences/cow_H_001/img/','startFrame',1,'endFrame',340,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','deer_H_001','path','sequences/deer_H_001/img/','startFrame',1,'endFrame',330,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','dog_H_001','path','sequences/dog_H_001/img/','startFrame',1,'endFrame',295,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','fox_H_001','path','sequences/fox_H_001/img/','startFrame',1,'endFrame',620,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','helicopter_H_001','path','sequences/helicopter_H_001/img/','startFrame',1,'endFrame',270,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','helicopter_H_002','path','sequences/helicopter_H_002/img/','startFrame',1,'endFrame',1000,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','hog_H_001','path','sequences/hog_H_001/img/','startFrame',1,'endFrame',490,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','hog_H_002','path','sequences/hog_H_002/img/','startFrame',1,'endFrame',460,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','hog_H_003','path','sequences/hog_H_003/img/','startFrame',1,'endFrame',612,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','hog_H_004','path','sequences/hog_H_004/img/','startFrame',1,'endFrame',820,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_H_002','path','sequences/person_H_002/img/','startFrame',1,'endFrame',300,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_H_003','path','sequences/person_H_003/img/','startFrame',1,'endFrame',660,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_H_004','path','sequences/person_H_004/img/','startFrame',1,'endFrame',968,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_H_006','path','sequences/person_H_006/img/','startFrame',1,'endFrame',690,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_H_008','path','sequences/person_H_008/img/','startFrame',1,'endFrame',130,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_H_011','path','sequences/person_H_011/img/','startFrame',1,'endFrame',720,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_H_012','path','sequences/person_H_012/img/','startFrame',1,'endFrame',1200,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_H_013','path','sequences/person_H_013/img/','startFrame',1,'endFrame',500,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','face_H_001','path','sequences/face_H_001/img/','startFrame',1,'endFrame',850,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','leopard_H_001','path','sequences/leopard_H_001/img/','startFrame',1,'endFrame',208,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','owl_H_001','path','sequences/owl_H_001/img/','startFrame',1,'endFrame',164,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','airplane_H_003','path','sequences/airplane_H_003/img/','startFrame',1,'endFrame',263,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','mouse_H_001','path','sequences/mouse_H_001/img/','startFrame',1,'endFrame',194,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','head_H_002','path','sequences/head_H_002/img/','startFrame',1,'endFrame',367,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
     }; 
     %struct('name','woman_H_001','path','sequences/woman_H_001/img/','startFrame',1,'endFrame',465,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    %   struct('name','person_H_001','path','sequences/person_H_001/img/','startFrame',1,'endFrame',630,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...  
    % struct('name','person_H_009','path','sequences/person_H_009/img/','startFrame',1,'endFrame',425,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
     %  struct('name','person_H_014','path','sequences/person_H_014/img/','startFrame',1,'endFrame',246,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
      % struct('name','head_H_001','path','sequences/head_H_001/img/','startFrame',1,'endFrame',670,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    
%Drone subset 25 -3 
TIR_D={struct('name','car_D_002','path','sequences/car_D_002/img/','startFrame',1,'endFrame',160,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','dog_D_001','path','sequences/dog_D_001/img/','startFrame',1,'endFrame',680,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','car_D_004','path','sequences/car_D_004/img/','startFrame',1,'endFrame',400,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','car_D_005','path','sequences/car_D_005/img/','startFrame',1,'endFrame',930,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','car_D_007','path','sequences/car_D_007/img/','startFrame',1,'endFrame',830,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','car_D_009','path','sequences/car_D_009/img/','startFrame',1,'endFrame',650,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','dog_D_002','path','sequences/dog_D_002/img/','startFrame',1,'endFrame',280,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_D_003','path','sequences/person_D_003/img/','startFrame',1,'endFrame',400,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_D_004','path','sequences/person_D_004/img/','startFrame',1,'endFrame',780,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_D_006','path','sequences/person_D_006/img/','startFrame',1,'endFrame',316,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_D_009','path','sequences/person_D_009/img/','startFrame',1,'endFrame',1105,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_D_011','path','sequences/person_D_011/img/','startFrame',1,'endFrame',210,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_D_014','path','sequences/person_D_014/img/','startFrame',1,'endFrame',640,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_D_015','path','sequences/person_D_015/img/','startFrame',1,'endFrame',640,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_D_016','path','sequences/person_D_016/img/','startFrame',1,'endFrame',925,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_D_019','path','sequences/person_D_019/img/','startFrame',1,'endFrame',580,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_D_020','path','sequences/person_D_020/img/','startFrame',1,'endFrame',520,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_D_022','path','sequences/person_D_022/img/','startFrame',1,'endFrame',1490,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','hog_D_001','path','sequences/hog_D_001/img/','startFrame',1,'endFrame',470,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_D_023','path','sequences/person_D_023/img/','startFrame',1,'endFrame',650,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','drone_D_001','path','sequences/drone_D_001/img/','startFrame',1,'endFrame',559,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','cat_D_001','path','sequences/cat_D_001/img/','startFrame',1,'endFrame',455,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       };
    %   struct('name','boat_D_001','path','sequences/boat_D_001/img/','startFrame',1,'endFrame',320,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
      %  struct('name','person_D_021','path','sequences/person_D_021/img/','startFrame',1,'endFrame',510,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
      % struct('name','motobiker_D_001','path','sequences/motobiker_D_001/img/','startFrame',1,'endFrame',300,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
      
%Surveillance subset 32
TIR_S={struct('name','boy_S_001','path','sequences/boy_S_001/img/','startFrame',1,'endFrame',405,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','boy_S_002','path','sequences/boy_S_002/img/','startFrame',1,'endFrame',1070,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','bus_S_004','path','sequences/bus_S_004/img/','startFrame',1,'endFrame',650,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','pickup_S_001','path','sequences/pickup_S_001/img/','startFrame',1,'endFrame',245,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','car_S_001','path','sequences/car_S_001/img/','startFrame',1,'endFrame',350,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','car_S_003','path','sequences/car_S_003/img/','startFrame',1,'endFrame',105,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','helicopter_S_001','path','sequences/helicopter_S_001/img/','startFrame',1,'endFrame',530,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','hog_S_001','path','sequences/hog_S_001/img/','startFrame',1,'endFrame',720,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','street_S_001','path','sequences/street_S_001/img/','startFrame',1,'endFrame',215,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','street_S_002','path','sequences/street_S_002/img/','startFrame',1,'endFrame',191,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','street_S_003','path','sequences/street_S_003/img/','startFrame',1,'endFrame',773,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','street_S_004','path','sequences/street_S_004/img/','startFrame',1,'endFrame',310,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','street_S_005','path','sequences/street_S_005/img/','startFrame',1,'endFrame',680,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_S_001','path','sequences/person_S_001/img/','startFrame',1,'endFrame',800,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_S_003','path','sequences/person_S_003/img/','startFrame',1,'endFrame',735,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_S_006','path','sequences/person_S_006/img/','startFrame',1,'endFrame',610,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_S_007','path','sequences/person_S_007/img/','startFrame',1,'endFrame',2040,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_S_008','path','sequences/person_S_008/img/','startFrame',1,'endFrame',387,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_S_010','path','sequences/person_S_010/img/','startFrame',1,'endFrame',630,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_S_011','path','sequences/person_S_011/img/','startFrame',1,'endFrame',615,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_S_012','path','sequences/person_S_012/img/','startFrame',1,'endFrame',550,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_S_014','path','sequences/person_S_014/img/','startFrame',1,'endFrame',110,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_S_015','path','sequences/person_S_015/img/','startFrame',1,'endFrame',380,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_S_016','path','sequences/person_S_016/img/','startFrame',1,'endFrame',600,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_S_017','path','sequences/person_S_017/img/','startFrame',1,'endFrame',570,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_S_018','path','sequences/person_S_018/img/','startFrame',1,'endFrame',500,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_S_019','path','sequences/person_S_019/img/','startFrame',1,'endFrame',1200,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','truck_S_001','path','sequences/truck_S_001/img/','startFrame',1,'endFrame',450,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','coyote_S_001','path','sequences/coyote_S_001/img/','startFrame',1,'endFrame',475,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','crowd_S_001','path','sequences/crowd_S_001/img/','startFrame',1,'endFrame',325,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','head_S_001','path','sequences/head_S_001/img/','startFrame',1,'endFrame',465,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','hand_S_001','path','sequences/hand_S_001/img/','startFrame',1,'endFrame',84,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
};  
% struct('name','car_S_002','path','sequences/car_S_002/img/','startFrame',1,'endFrame',680,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
 %  struct('name','crowd_S_002','path','sequences/crowd_S_002/img/','startFrame',1,'endFrame',740,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       %struct('name','face_S_001','path','sequences/face_S_001/img/','startFrame',1,'endFrame',890,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    % struct('name','person_S_013','path','sequences/person_S_013/img/','startFrame',1,'endFrame',887,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
 %  struct('name','person_S_009','path','sequences/person_S_009/img/','startFrame',1,'endFrame',350,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
 % struct('name','person_S_005','path','sequences/person_S_005/img/','startFrame',1,'endFrame',620,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
% struct('name','person_S_002','path','sequences/person_S_002/img/','startFrame',1,'endFrame',660,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    % struct('name','couple_S_001','path','sequences/couple_S_001/img/','startFrame',1,'endFrame',190,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
  %  struct('name','person_S_004','path','sequences/person_S_004/img/','startFrame',1,'endFrame',540,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...

%Vehicle-mounted subset 12
TIR_V={struct('name','bus_V_002','path','sequences/bus_V_002/img/','startFrame',1,'endFrame',1080,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_V_007','path','sequences/person_V_007/img/','startFrame',1,'endFrame',130,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_V_008','path','sequences/person_V_008/img/','startFrame',1,'endFrame',800,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','bus_V_003','path','sequences/bus_V_003/img/','startFrame',1,'endFrame',1035,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','bus_V_004','path','sequences/bus_V_004/img/','startFrame',1,'endFrame',1599,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','bus_V_005','path','sequences/bus_V_005/img/','startFrame',1,'endFrame',2110,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','car_V_001','path','sequences/car_V_001/img/','startFrame',1,'endFrame',1250,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','car_V_003','path','sequences/car_V_003/img/','startFrame',1,'endFrame',1600,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','car_V_009','path','sequences/car_V_009/img/','startFrame',1,'endFrame',850,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','car_V_010','path','sequences/car_V_010/img/','startFrame',1,'endFrame',2070,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','car_V_014','path','sequences/car_V_014/img/','startFrame',1,'endFrame',2110,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       struct('name','person_V_002','path','sequences/person_V_002/img/','startFrame',1,'endFrame',285,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
      };
   %struct('name','bus_V_001','path','sequences/bus_V_001/img/','startFrame',1,'endFrame',650,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       % struct('name','motobiker_V_001','path','sequences/motobiker_V_001/img/','startFrame',1,'endFrame',1460,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
     % struct('name','car_V_011','path','sequences/car_V_011/img/','startFrame',1,'endFrame',1600,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       %struct('name','car_V_013','path','sequences/car_V_013/img/','startFrame',1,'endFrame',1090,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    % struct('name','car_V_004','path','sequences/car_V_004/img/','startFrame',1,'endFrame',885,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       %struct('name','car_V_006','path','sequences/car_V_006/img/','startFrame',1,'endFrame',1800,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
       %struct('name','car_V_007','path','sequences/car_V_007/img/','startFrame',1,'endFrame',1200,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
     %  struct('name','car_V_008','path','sequences/car_V_008/img/','startFrame',1,'endFrame',1030,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
  
% new added long-term tracking sequences
New_seq_LT={struct('name','aircraft_car','path','sequences/aircraft_car/img/','startFrame',1,'endFrame',4281,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
        struct('name','badminton','path','sequences/badminton/img/','startFrame',1,'endFrame',3400,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
        struct('name','car01','path','sequences/car01/img/','startFrame',1,'endFrame',4720,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
        struct('name','car02','path','sequences/car02/img/','startFrame',1,'endFrame',2600,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
        struct('name','car03','path','sequences/car03/img/','startFrame',1,'endFrame',2920,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
        struct('name','cooled_person','path','sequences/cooled_person/img/','startFrame',1,'endFrame',3356,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
        struct('name','fighting_deer','path','sequences/fighting_deer/img/','startFrame',1,'endFrame',3009,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
        struct('name','fox','path','sequences/fox/img/','startFrame',1,'endFrame',3278,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
        struct('name','helicopter','path','sequences/helicopter/img/','startFrame',1,'endFrame',3056,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
        struct('name','road_person','path','sequences/road_person/img/','startFrame',1,'endFrame',4310,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
        struct('name','soccer','path','sequences/soccer/img/','startFrame',1,'endFrame',3000,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
};

seqs_ori=[TIR_V TIR_D TIR_H TIR_S]; %100
seqs =[New_seq_LT ]; 

