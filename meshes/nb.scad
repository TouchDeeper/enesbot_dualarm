$fn = 100;
// base del brazo
d = 0.06;
h = 0.20;


translate([0,-m/2,mh])
     rotate([0,60,-30])
            translate([0,0,-h])
                cylinder(h,d,d);

translate([0,m/2,mh ])
    rotate([0,60,30])
        translate([0,0,-h])
            cylinder(h,d,d);

m = 0.3;
mh = 0.4;
l= 0.085;
translate([-1*l,0,0])
union() {
cylinder(mh*0.9,l*0.8,l*1.1);
cylinder(mh*0.2,l*1.2,l*0.8);
}
/*
translate ([-m/2,-m/2,0])
{



    union()
    {
        translate([0,m/4,0])
        cube([m/2,m/2,m ]);
        cube([m,m/2.5,m/3.5 ]);
        translate([0,m -(m/2.5),0])
            cube([m,m/2.5,m/3.5 ]);
        translate([0,0,2*m/3])
            cube([m/2,m,m/3 ]);
    }

}
*/
