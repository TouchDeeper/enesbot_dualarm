$fn = 100;
m = 0.3;
l = 0.1;
w = 0.04;
translate([0,0,0])

rotate([0,90,0])
    
    cylinder(l*0.25,w,w);
 difference() {   
    translate([w*1.25,0,-l*0.25 / 2])
    cylinder(l*0.25,w,w);

translate([w*1,-w/2,-l*0.25 / 2 - 0.005])
    cube([l,w,w]);
    
        
 }
    


