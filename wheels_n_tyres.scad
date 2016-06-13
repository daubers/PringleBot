tyreDiam = 45;
tyreWidth = 15;
wheelDiam = 40;
wheelWidth = 15;
$fn=100;

module wheel() {
    difference(){
        cylinder(r=20, h=15);
        cylinder(r=1, h=15);
        translate([0,0,15-12]) cylinder(r=15, h=15);
    }
}

module tyre(){
    difference(){
        intersection() {
            sphere(r=tyreDiam/2, $fn=100);
            translate([-tyreDiam/2, -tyreDiam/2, -tyreWidth/2])
            cube([tyreDiam, tyreDiam, tyreWidth]);
        }
        translate([0,0,-wheelWidth/2]) 
        cylinder(r=wheelDiam/2, h=wheelWidth);
    }
}

//translate([0,0,-wheelWidth/2]) wheel();
tyre();