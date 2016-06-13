can_diameter = 75;
can_length = 258;
motor_width = 15;
motor_height = 20;
motor_length = 27.5;
motor_lock_nut_thickness = 3.13;
motor_lock_nut_height = 6.9;
bolt_size = 4;
$fn=100;

module motor(){
    cube([motor_width, motor_length, motor_height]);
}

difference(){
    cube([motor_width+motor_lock_nut_thickness+3,can_diameter,can_diameter/2]);
    
    translate([1,0,1]) {
        motor();
        translate([1+motor_width,0,motor_height/2-(motor_lock_nut_height/2)]){
            cube([motor_lock_nut_thickness, motor_lock_nut_height, motor_lock_nut_height]);
            translate([-1.1, motor_lock_nut_height/2, motor_lock_nut_height/2]) rotate([0,90,0]) cylinder(r=bolt_size/2,h=motor_lock_nut_thickness+2.1);
        }      
    }
    
    translate([1,can_diameter-motor_length,1]) {
        motor();
        translate([1+motor_width,motor_length,motor_height/2-(motor_lock_nut_height/2)]){
            translate([0,-motor_lock_nut_height,0]) cube([motor_lock_nut_thickness, motor_lock_nut_height, motor_lock_nut_height]);
            translate([-1.1, -motor_lock_nut_height/2, motor_lock_nut_height/2]) rotate([0,90,0]) cylinder(r=bolt_size/2,h=motor_lock_nut_thickness+2.1);
        }      
    }
    
    translate([0,can_diameter/2,can_diameter/2])
        rotate([0,90,0]) 
        cylinder(r=can_diameter/2, h=can_length);
}
