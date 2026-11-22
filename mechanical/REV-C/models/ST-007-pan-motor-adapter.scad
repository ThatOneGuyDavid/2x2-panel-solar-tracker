// Separate pan motor adapter surrounding the gearbox's 90-mm output flange.
// Units: mm; layout proxy; NOT FOR FABRICATION.
$fn=64;
length_x=110;
length_y=140;
thickness=6.35;
corner_radius=10;
flange_opening=92;
stand_off_x=[-30,30];
stand_off_y=[-55,55];
stand_off_hole_diameter=9;

linear_extrude(height=thickness)
  difference(){
    hull() for(x=[-length_x/2+corner_radius,length_x/2-corner_radius],
                y=[-length_y/2+corner_radius,length_y/2-corner_radius])
      translate([x,y]) circle(r=corner_radius);
    square([flange_opening,flange_opening],center=true);
    for(x=stand_off_x,y=stand_off_y)
      translate([x,y]) circle(d=stand_off_hole_diameter);
  }
