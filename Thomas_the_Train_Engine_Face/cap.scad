can_inner = 72.6;
wall_thickness_rim = 2.5 ;
can_outer = can_inner+wall_thickness_rim;

difference(){
cylinder(r=can_inner/2,h=10);
cylinder(r=can_inner/2-3,h=10);
}
