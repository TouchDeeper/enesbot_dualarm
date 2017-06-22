$fn = 100;
m = 0.3;
l = 0.1;
w = 0.04;
rotate([90,0,0])
rotate([0,90,0])
difference() {
    
    union(){
    translate([0,0,l])
        sphere(w);
    cylinder(l,w,w);
    }
    translate([-l/2,0,l/2])
    cube([l,l,l]);
        
    
    
}


