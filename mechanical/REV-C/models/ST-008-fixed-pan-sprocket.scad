// Fixed spindle sprocket layout proxy; tooth rectangles are NOT a chain profile.
// Units: mm. Do not machine or cut from this model.
$fn=96;
chain_pitch=12.7;
tooth_count=72;
pitch_radius=chain_pitch/(2*sin(180/tooth_count));
root_radius=pitch_radius-3;
tip_radius=pitch_radius+4;
inner_radius=40;
thickness=2.2;
flange_bolt_offset=40;
flange_bolt_hole_diameter=11;

difference(){
  union(){
    cylinder(h=thickness,r=root_radius);
    for(i=[0:tooth_count-1]) rotate([0,0,i*360/tooth_count])
      translate([-2.8,root_radius-0.5,0])
        cube([5.6,tip_radius-root_radius+0.5,thickness]);
  }
  translate([0,0,-1]) cylinder(h=thickness+2,r=inner_radius);
  for(x=[-flange_bolt_offset,flange_bolt_offset],
      y=[-flange_bolt_offset,flange_bolt_offset])
    translate([x,y,-1]) cylinder(h=thickness+2,d=flange_bolt_hole_diameter);
}
