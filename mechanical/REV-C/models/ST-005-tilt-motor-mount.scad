// Updated tilt motor mount, mirrored about Z = motor_z.
// Units: mm. Proxy dimensions; NOT FOR FABRICATION.
$fn=64;
thickness=6.35;
tool_radius=6.35;
motor_y=-130;
motor_z=250.1625;
motor_clearance_diameter=30;
motor_hole_spacing=60;
motor_hole_diameter=9;
motor_pad_half_width=60;
mount_y_min=-185;
mount_y_step=-75;
mount_y_max=55;
mount_pad_half_height=90;
motor_pad_half_height=60;
slot_length=42;
slot_width=11;
slot_row_y=[-35,35];
slot_center_z=[motor_z-48.9,motor_z+48.9];

module slot_yz(y,z,len,w){
  hull() for(dz=[-(len-w)/2,(len-w)/2])
    translate([y,z+dz]) circle(d=w);
}
module plate_outline(){
  offset(r=tool_radius) offset(delta=-tool_radius)
    polygon(points=[
      [mount_y_min,motor_z-motor_pad_half_height],
      [mount_y_min,motor_z+motor_pad_half_height],
      [mount_y_step,motor_z+motor_pad_half_height],
      [mount_y_step,motor_z+mount_pad_half_height],
      [mount_y_max,motor_z+mount_pad_half_height],
      [mount_y_max,motor_z-mount_pad_half_height],
      [mount_y_step,motor_z-mount_pad_half_height],
      [mount_y_step,motor_z-motor_pad_half_height]]);
}
linear_extrude(height=thickness)
  difference(){
    plate_outline();
    translate([motor_y,motor_z]) circle(d=motor_clearance_diameter);
    for(dy=[-motor_hole_spacing/2,motor_hole_spacing/2],
        dz=[-motor_hole_spacing/2,motor_hole_spacing/2])
      translate([motor_y+dy,motor_z+dz]) circle(d=motor_hole_diameter);
    for(y=slot_row_y,z=slot_center_z) slot_yz(y,z,slot_length,slot_width);
  }
