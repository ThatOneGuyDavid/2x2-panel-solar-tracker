// Updated hub-mounted pan motor plate. Units: mm; NOT FOR FABRICATION.
$fn=96;
hub_face_diameter=160;
hub_radial_overlap=25.4;
base_diameter=hub_face_diameter+2*hub_radial_overlap;
thickness=6.35;
extension_half_width=55;
extension_bottom_y=-290;
extension_top_y=-70;
corner_radius=15;
hub_relief_diameter=75;
hub_stud_pcd=127;
hub_stud_phase=18;
hub_stud_hole_diameter=14;
motor_center_x=0;
motor_center_y=-205;
motor_clearance_diameter=30;
standoff_x=[-30,30];
standoff_y=[-260,-150];
adjustment_slot_length=30;
adjustment_slot_width=9;

module slot(x,y,len,w){
  hull() for(dy=[-(len-w)/2,(len-w)/2])
    translate([x,y+dy]) circle(d=w);
}
module extension(){
  hull() for(x=[-extension_half_width+corner_radius,
                 extension_half_width-corner_radius],
              y=[extension_bottom_y+corner_radius,
                 extension_top_y-corner_radius])
    translate([x,y]) circle(r=corner_radius);
}
difference(){
  union(){
    cylinder(h=thickness,d=base_diameter);
    linear_extrude(height=thickness) extension();
  }
  translate([0,0,-1]) cylinder(h=thickness+2,d=hub_relief_diameter);
  for(i=[0:4]) let(a=hub_stud_phase+i*72)
    translate([hub_stud_pcd/2*cos(a),hub_stud_pcd/2*sin(a),-1])
      cylinder(h=thickness+2,d=hub_stud_hole_diameter);
  translate([motor_center_x,motor_center_y,-1])
    cylinder(h=thickness+2,d=motor_clearance_diameter);
  for(x=standoff_x,y=standoff_y)
    translate([0,0,-1]) linear_extrude(height=thickness+2)
      slot(x,y,adjustment_slot_length,adjustment_slot_width);
}
