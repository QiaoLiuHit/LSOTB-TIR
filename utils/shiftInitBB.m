function r=shiftInitBB(r,shiftType,imgH,imgW)

center=[r(1)+r(3)/2, r(2)+r(4)/2];

br_x=r(1) + r(3)-1;
br_y=r(2) + r(4)-1;

switch shiftType
    case 'scale_8'
        ratio=0.8;
        w = ratio*r(3);
        h = ratio*r(4);
        r = round([center(1)-w/2,center(2)-h/2,w,h]);
    case 'scale_9'
        ratio=0.9;
        w = ratio*r(3);
        h = ratio*r(4);
        r = round([center(1)-w/2,center(2)-h/2,w,h]);
    case 'scale_11'
        ratio=1.1;
        w = ratio*r(3);
        h = ratio*r(4);
        r = round([center(1)-w/2,center(2)-h/2,w,h]);
    case 'scale_12'
        ratio=1.2;
        w = ratio*r(3);
        h = ratio*r(4);
        r = round([center(1)-w/2,center(2)-h/2,w,h]);
    case 'scale_7'
        ratio=0.7;
        w = ratio*r(3);
        h = ratio*r(4);
        r = round([center(1)-w/2,center(2)-h/2,w,h]);
    case 'scale_13'
        ratio=1.3;
        w = ratio*r(3);
        h = ratio*r(4);
        r = round([center(1)-w/2,center(2)-h/2,w,h]);
    case 'left'
        r(1) = r(1) - ceil(0.1*r(3));
    case 'right'
        r(1) = r(1) + ceil(0.1*r(3));
    case 'up'
        r(2) = r(2) - ceil(0.1*r(4));
    case 'down'
        r(2) = r(2) + ceil(0.1*r(4));
    case 'topLeft'
        
        r(1) = round(r(1) - 0.1*r(3));
        r(2) = round(r(2) - 0.1*r(4));
        
        r(3) = br_x-r(1)+1;
        r(4) = br_y-r(2)+1;
    case 'topRight'
        br_x = round(br_x + 0.1*r(3));
        r(2) = round(r(2) - 0.1*r(4));
        
        r(3) = br_x-r(1)+1;
        r(4) = br_y-r(2)+1;
    case 'bottomLeft'
        r(1) = round(r(1) - 0.1*r(3));
        br_y = round(br_y + 0.1*r(4));
        
        r(3) = br_x-r(1)+1;
        r(4) = br_y-r(2)+1;
    case 'bottomRight'
        br_x = round(br_x + 0.1*r(3));
        br_y = round(br_y + 0.1*r(4));
        
        r(3) = br_x-r(1)+1;
        r(4) = br_y-r(2)+1;
end

if r(1)<1
    r(1)=1;
end

if r(2)<1
    r(2)=1;
end

if r(1)+r(3)-1>imgW
    r(3)=imgW-r(1)+1;
end

if r(2)+r(4)-1>imgH
    r(4)=imgH-r(2)+1;
end