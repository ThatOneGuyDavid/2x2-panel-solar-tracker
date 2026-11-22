// Solar tracker post, hub, bracket and four-panel shape study, millimeters.
// The original post/spindle model has grown into this single assembly model.
// The bracket, bearing housings, clamps, frame tubes and unmeasured hub details
// are geometry placeholders, NOT fabrication dimensions or a strength check.
$fn = 48;
winter_angle = 71;              // panel plane above horizontal, user input
wind_angle = 0;                 // horizontal wind-stow concept
tilt_angle = winter_angle;      // use wind_angle for the other preset
pan_angle = 0;                 // degrees about upright spindle; model south center
pan_min = -90;
pan_max = 90;                  // provisional 180-degree total travel
bearing_span = 320;             // inward pads move bearings to +/-160 mm
post_above_ground = 1524;      // five feet, user input
post_width = 140;              // nominal 6x6 actual size: confirm post
hub_face_z = 65;
hub_face_thickness = 12;
hub_face_diameter = 160;      // unmeasured proxy
stud_circle = 127;            // listed 5-on-5-inch pattern
hub_stud_phase_deg = 18;      // north pair parallel to pan motor plate's north edge
hub_overlap = 25.4;           // user: 1 in radial overhang past hub plate
bracket_base_diameter = hub_face_diameter + 2*hub_overlap;
deck_thickness = 5/16*25.4;   // working stock: ASTM A36, 5/16 in
deck_bottom_z = hub_face_z + hub_face_thickness;
deck_top_z = deck_bottom_z + deck_thickness;
pan_motor_plate_thickness = 1/4*25.4; // provisional A36, shares five hub studs
pan_motor_plate_end_y = -290; // extension for the four Y-row stand-offs
pan_motor_plate_half_width = 55;
motor_plate_corner_radius = 15; // provisional exterior-corner rounding
tilt_motor_plate_corner_radius = 6.35; // 1/2-in cutter radius for the stepped shoulder
pan_motor_center_y = -205; // 205 mm chain center distance from fixed sprocket
pan_motor_hole_diameter = 30; // provisional output clearance
pan_motor_gearbox_diameter = 70;
pan_motor_gearbox_height = 60;
pan_motor_gearbox_top_z = 80;
pan_motor_body_diameter = 56;
pan_motor_body_length = 145;
motor_flange_size = 90;
motor_flange_thickness = 6.35;
motor_flange_hole_spacing = 60;
pan_motor_flange_size = motor_flange_size;
pan_motor_flange_thickness = motor_flange_thickness;
pan_adapter_plate_x = 110;
pan_adapter_plate_size = 140; // length along Y
pan_adapter_plate_thickness = 6.35;
pan_adapter_corner_radius = 10;
pan_motor_bolt_offset = motor_flange_hole_spacing/2;
pan_standoff_offset = 55; // outside the flange along Y; narrow X columns
pan_standoff_slot_length = 30;
pan_standoff_slot_width = 9;
pan_chain_center_distance = 205;
tilt_motor_flange_thickness = motor_flange_thickness;
tilt_motor_plate_thickness = 1/4*25.4;
tilt_motor_plate_y_min = -185; // north is model -Y
tilt_motor_plate_y_step = -75;
tilt_motor_plate_y_max = 55;
tilt_motor_plate_half_height = 90;
tilt_motor_pad_half_height = 60;
tilt_motor_center_y = -130;
tilt_motor_mount_slot_length = 42; // symmetric pattern; preserves at least 10 mm travel with existing bolt rows
tilt_motor_mount_slot_width = 11;
tilt_motor_mount_slot_row_offset = 48.9; // symmetric half-spacing for existing bolt rows
bicycle_chain_pitch = 12.7;    // 1/2-in bicycle chain pitch
fixed_sprocket_teeth = 72;     // enlarged to clear post corners by at least 1 in
fixed_sprocket_pitch_radius = bicycle_chain_pitch/(2*sin(180/fixed_sprocket_teeth));
fixed_sprocket_root_radius = fixed_sprocket_pitch_radius-3;
fixed_sprocket_tip_radius = fixed_sprocket_pitch_radius+4;
fixed_sprocket_inner_radius = 40; // center relief; remaining web is a solid plate
fixed_spindle_flange_size = 110;
fixed_spindle_flange_thickness = 8;
fixed_spindle_recess_depth = 8;
fixed_spindle_flange_bottom_z = -fixed_spindle_recess_depth;
fixed_sprocket_bottom_z = fixed_spindle_flange_bottom_z+fixed_spindle_flange_thickness; // now above the recessed spindle flange
fixed_sprocket_thickness = 2.2; // tooth-width placeholder until chain width chosen
pan_chain_center_z = fixed_sprocket_bottom_z + fixed_sprocket_thickness/2;
tilt_sprocket_teeth = 28;     // provisional tilt drive, 1/2-in chain pitch
tilt_sprocket_pitch_radius = bicycle_chain_pitch/(2*sin(180/tilt_sprocket_teeth));
tilt_sprocket_root_radius = tilt_sprocket_pitch_radius-3;
tilt_sprocket_tip_radius = tilt_sprocket_pitch_radius+4;
tilt_sprocket_x = 230;       // shared chain plane, between +X bearing and clamp
tilt_sprocket_thickness = 2.2;
tilt_sprocket_collar_radius = 20;
tilt_sprocket_collar_width = 18;
motor_pinion_teeth = 12;    // provisional output sprocket
motor_pinion_pitch_radius = bicycle_chain_pitch/(2*sin(180/motor_pinion_teeth));
motor_pinion_root_radius = motor_pinion_pitch_radius-2;
motor_pinion_tip_radius = motor_pinion_pitch_radius+2.5;
motor_output_diameter = 15; // provisional, points outward along +X
motor_gearbox_x0 = 128;
motor_gearbox_x1 = 188;
tilt_chain_width = 6.4;    // visual belt envelope, not actual chain section
tilt_chain_radial_half = 2.2;
spindle_flange_bolt_offset = 40; // four-hole flange pattern unmeasured
arm_start_x = 75;             // visual overlap with round base
arm_half_width = 75;          // just beyond 140-mm bearing envelope
pad_top_z = 225 + 7*25.4;      // user: raise bracket pads by 7 in
pad_inner_x = 130;            // 12 mm inward of bearing envelope
riser_center_x = 202;         // original riser position; pads now fold inward
main_inside_radius = 13;      // 1.64t; bend line must cross rolling direction
main_center_radius = main_inside_radius + deck_thickness/2;
riser_inner_x = riser_center_x - deck_thickness/2;
riser_outer_x = riser_center_x + deck_thickness/2;
motor_mount_flange_x = riser_outer_x; // inside (-X) face of the motor plate
pad_half_width = arm_half_width;
gusset_height = 7*25.4;       // user: 7-in tall bolt-on side plates
gusset_thickness = 1/4*25.4;  // working stock: ASTM A36, 1/4 in
gusset_inside_radius = 10;    // 1.57t; bend line must cross rolling direction
gusset_center_radius = gusset_inside_radius + gusset_thickness/2;
gusset_top_gap = 5;           // visual gap below bearing pads
gusset_drop = 2*25.4;         // user: lower both side plates by 2 in
gusset_top_z = pad_top_z - deck_thickness - gusset_top_gap - gusset_drop;
gusset_bottom_z = gusset_top_z - gusset_height;
tilt_motor_center_z = (gusset_top_z+gusset_bottom_z)/2; // user: center motor vertically on gussets
gusset_return_end_y = 10;     // flat end of each return
gusset_bolt_y = 35;           // outside the radiused return bend
gusset_bolt_low_z = gusset_bottom_z + 35;
gusset_bolt_high_z = gusset_top_z - 45;
mast_hole_diameter = 35;     // placeholder until EMT size and clearance are confirmed
mast_hole_y = 40;            // provisional +Y offset to clear tilt shaft
mast_plate_thickness = gusset_thickness; // separate 1/4-in A36 plates, provisional
upper_mast_plate_half_x = 185; // covers both pad flats and bearing bolt positions
upper_mast_plate_half_y = arm_half_width;
upper_mast_plate_top_z = pad_top_z + mast_plate_thickness;
lower_mast_plate_half_x = 75; // central section between long side gussets
lower_mast_plate_inside_radius = 10;
lower_mast_plate_center_radius = lower_mast_plate_inside_radius + mast_plate_thickness/2;
lower_mast_plate_tab_center_y = arm_half_width - mast_plate_thickness/2; // tabs on inner gusset faces
lower_mast_plate_flat_half_y = lower_mast_plate_tab_center_y - lower_mast_plate_center_radius;
lower_mast_tongue_half_x = 30; // relief between +Y tabs leaves material around mast hole
lower_mast_tongue_end_y = 71.35;
lower_mast_plate_bolt_x = 52.5;
lower_mast_plate_bottom_z = gusset_bottom_z;
lower_mast_plate_mid_z = lower_mast_plate_bottom_z + mast_plate_thickness/2;
lower_mast_plate_bend_top_z = lower_mast_plate_mid_z + lower_mast_plate_center_radius;
lower_mast_plate_tab_top_z = gusset_bottom_z + 75;
lower_mast_plate_bolt_z = gusset_bottom_z + 45;
mast_outer_diameter = 30;    // visual EMT proxy; actual trade size still unclear
mast_wall = 1.5;             // visual hollow-wall proxy
mast_bottom_z = lower_mast_plate_bottom_z - 30;
mast_top_z = 1800;           // visual extension above high winter panel edge
bearing_base_length = 139.7;   // 6244K56 overall length: 5 1/2 in
bearing_base_width = 36.11875; // 6244K56 overall width: 1 27/64 in
bearing_overall_height = 71.4375; // 6244K56 overall height: 2 13/16 in
bearing_center_height = 36.5125; // 6244K56 shaft center: 1 7/16 in
shaft_center_z = upper_mast_plate_top_z + bearing_center_height;
shaft_diameter = 25.4;        // planned 1 in, not purchased
panel_x = 1727.2;            // 68 in, user input
panel_y = 1143;              // 45 in, user input
panel_gap_x = 120;           // corrected: clear left-right gap between columns
panel_gap_y = 60;            // two back-to-back clamps project 30 mm from each panel edge
tube_size = 25.4;            // ~1 in outside size, provisional
tube_inset = 300;            // assumed panel edge to tube centerline
tube_end_overhang = 30;      // past outer top/bottom panel edges, each end
horizontal_rail_inset = 100; // assumed outer panel edge to rail centerline
horizontal_end_overhang = 30;// beyond outside face of outer vertical tube
inner_tube_x = panel_gap_x/2 + tube_inset;
outer_tube_x = panel_gap_x/2 + panel_x - tube_inset;
horizontal_rail_y = panel_y + panel_gap_y/2 - horizontal_rail_inset;
upper_center_rail_y = 200; // above clamp line; modeled mast gap >=25.4 mm through 0–71 deg
lower_center_rail_y = -240; // below clamp line; clears mast and gusset by >=25.4 mm through 0–71 deg
horizontal_half_length = outer_tube_x + tube_size/2 + horizontal_end_overhang;
clamp_span = 2*inner_tube_x; // 720 mm if blue clamps center on inner tubes
shaft_end_projection = 20;   // provisional exposed length beyond each outer clamp face
shaft_mount_part = "custom-size clamp proxy"; // user: same outer envelope as tilt bearing
shaft_mount_center_height = bearing_center_height;
shaft_mount_overall_height = bearing_overall_height;
shaft_mount_base_length = bearing_base_length;
shaft_mount_base_width = bearing_base_width;
shaft_length = clamp_span + shaft_mount_base_width + 2*shaft_end_projection; // 796.12 mm
shaft_mount_hole_spacing = 101.6; // provisional, matching the bearing base
shaft_mount_hole_diameter = 7.112; // provisional custom fastening
shaft_mount_base_thickness = 8; // visual proxy, not catalog dimension
shaft_mount_spacer_thickness = 25.4; // user: 1-in block between each clamp and tube
vertical_tube_top = -shaft_mount_center_height - shaft_mount_spacer_thickness;
vertical_tube_bottom = vertical_tube_top - tube_size;
panel_proxy_thickness = 30;
render_gap = 1;             // visual separation at panel/tube contact face
panel_bottom = vertical_tube_bottom - render_gap - panel_proxy_thickness;
show_panels = true;
show_hub = true;
show_gussets = true;
show_mast_plates = true;
show_mast = true;
show_motor_plates = true;
show_fixed_sprocket = true;
show_pan_drive = true;
show_tilt_sprocket = true;
show_tilt_drive = true;
a36_color = [0.48,0.58,0.65]; // main bracket and gussets use the same grade

// Constant-thickness bent profiles. Each 90-degree arc has the selected
// inside radius; the outside radius is inside radius plus stock thickness.
function offset_profile(path,t) = concat(
    [for(p=path) [p[0]+p[2]*t/2,p[1]+p[3]*t/2]],
    [for(i=[len(path)-1:-1:0]) let(p=path[i])
        [p[0]-p[2]*t/2,p[1]-p[3]*t/2]]
);

function main_flap_path() =
    let(zb=deck_bottom_z+deck_thickness/2,
        zt=pad_top_z-deck_thickness/2,
        rc=main_center_radius,
        xc=riser_center_x)
    concat(
        [[arm_start_x,zb,0,1]],
        [for(i=[0:12]) let(a=-90+i*90/12)
            [xc-rc+rc*cos(a),zb+rc+rc*sin(a),-cos(a),-sin(a)]],
        [[xc,zt-rc,-1,0]],
        [for(i=[1:12]) let(a=i*90/12)
            [xc-rc+rc*cos(a),zt-rc+rc*sin(a),-cos(a),-sin(a)]],
        [[pad_inner_x,zt,0,-1]]
    );

function gusset_path() =
    let(rc=gusset_center_radius,
        gx=riser_inner_x-gusset_thickness/2,
        yw=arm_half_width+gusset_thickness/2,
        xt=gx-rc,
        yc=yw-rc)
    concat(
        [[-gx,gusset_return_end_y,-1,0]],
        [for(i=[0:12]) let(a=180-i*90/12)
            [-xt+rc*cos(a),yc+rc*sin(a),cos(a),sin(a)]],
        [[xt,yw,0,1]],
        [for(i=[1:12]) let(a=90-i*90/12)
            [xt+rc*cos(a),yc+rc*sin(a),cos(a),sin(a)]],
        [[gx,gusset_return_end_y,1,0]]
    );

function lower_mast_plate_path() =
    let(rc=lower_mast_plate_center_radius,
        yt=lower_mast_plate_tab_center_y,
        yf=lower_mast_plate_flat_half_y,
        zm=lower_mast_plate_mid_z,
        zb=lower_mast_plate_bend_top_z)
    concat(
        [[-yt,lower_mast_plate_tab_top_z,1,0],[-yt,zb,1,0]],
        [for(i=[1:12]) let(a=180+i*90/12)
            [-yf+rc*cos(a),zb+rc*sin(a),-cos(a),-sin(a)]],
        [[yf,zm,0,1]],
        [for(i=[1:12]) let(a=270+i*90/12)
            [yf+rc*cos(a),zb+rc*sin(a),-cos(a),-sin(a)]],
        [[yt,lower_mast_plate_tab_top_z,-1,0]]
    );

module ground_and_post() {
    color([0.37,0.48,0.31])
        translate([-700,-700,-post_above_ground-20]) cube([1400,1400,20]);
    color([0.59,0.38,0.22]) difference() {
        translate([-post_width/2,-post_width/2,-post_above_ground])
            cube([post_width,post_width,post_above_ground]);
        translate([-fixed_spindle_flange_size/2,-fixed_spindle_flange_size/2,
                   -fixed_spindle_recess_depth-0.01])
            cube([fixed_spindle_flange_size,fixed_spindle_flange_size,
                  fixed_spindle_recess_depth+0.02]);
    }
}

module fixed_spindle() {
    color([0.38,0.44,0.48]) {
        difference() {
            translate([-fixed_spindle_flange_size/2,-fixed_spindle_flange_size/2,
                       fixed_spindle_flange_bottom_z])
                cube([fixed_spindle_flange_size,fixed_spindle_flange_size,
                      fixed_spindle_flange_thickness]);
            for(x=[-spindle_flange_bolt_offset,spindle_flange_bolt_offset],
                y=[-spindle_flange_bolt_offset,spindle_flange_bolt_offset])
                translate([x,y,-1]) cylinder(h=10,d=11);
        }
        translate([0,0,fixed_spindle_flange_bottom_z+fixed_spindle_flange_thickness])
            cylinder(h=85.6,d1=50.8,d2=27);
    }
}

module fixed_spindle_sprocket() {
    // Solid 1/2-in pitch sprocket plate with only center and flange-bolt reliefs.
    // Tooth-root perimeter clears the modeled post corners by >25.4 mm.
    if(show_fixed_sprocket) color([0.23,0.27,0.30]) {
        difference() {
            union() {
                translate([0,0,fixed_sprocket_bottom_z])
                    cylinder(h=fixed_sprocket_thickness,r=fixed_sprocket_root_radius);
                for(i=[0:fixed_sprocket_teeth-1])
                    rotate([0,0,i*360/fixed_sprocket_teeth])
                        translate([-2.8,fixed_sprocket_root_radius-0.5,fixed_sprocket_bottom_z])
                            cube([5.6,fixed_sprocket_tip_radius-fixed_sprocket_root_radius+0.5,
                                  fixed_sprocket_thickness]);
            }
            translate([0,0,fixed_sprocket_bottom_z-1])
                cylinder(h=fixed_sprocket_thickness+2,r=fixed_sprocket_inner_radius);
            for(x=[-spindle_flange_bolt_offset,spindle_flange_bolt_offset],
                y=[-spindle_flange_bolt_offset,spindle_flange_bolt_offset])
                translate([x,y,fixed_sprocket_bottom_z-1])
                    cylinder(h=fixed_sprocket_thickness+2,d=11);
        }
    }
    if(show_fixed_sprocket)
        for(x=[-spindle_flange_bolt_offset,spindle_flange_bolt_offset],
            y=[-spindle_flange_bolt_offset,spindle_flange_bolt_offset]) {
            color([0.67,0.70,0.72])
            translate([x,y,fixed_spindle_flange_bottom_z])
                cylinder(h=fixed_sprocket_bottom_z+fixed_sprocket_thickness+2-fixed_spindle_flange_bottom_z,d=10);
            color([0.54,0.57,0.59])
                translate([x,y,fixed_sprocket_bottom_z+fixed_sprocket_thickness])
                    cylinder(h=6,d=18,$fn=6);
        }
}

module rotating_hub() {
    if(show_hub) color([0.14,0.19,0.23]) {
        translate([0,0,20]) cylinder(h=45,d=84);
        translate([0,0,hub_face_z]) cylinder(h=hub_face_thickness,d=hub_face_diameter);
    }
    if(show_hub) color([0.23,0.26,0.29])
        translate([0,0,77]) cylinder(h=28,d=65); // cap envelope proxy
    // Five studs pass through the round bracket base. Stud reach is a proxy.
    if(show_hub) for (i=[0:4]) {
        a = hub_stud_phase_deg+i*72;
        x = stud_circle/2*cos(a);
        y = stud_circle/2*sin(a);
        color([0.66,0.69,0.70])
            translate([x,y,deck_bottom_z])
                cylinder(h=deck_thickness+(show_motor_plates ? pan_motor_plate_thickness : 0)+14,d=10);
        color([0.54,0.57,0.59])
            translate([x,y,deck_top_z+(show_motor_plates ? pan_motor_plate_thickness : 0)])
                cylinder(h=12,d=18,$fn=6);
    }
}

module main_flap(side) {
    difference() {
        if(side>0)
            rotate([90,0,0]) linear_extrude(height=2*arm_half_width,center=true)
                polygon(points=offset_profile(main_flap_path(),deck_thickness));
        else
            mirror([1,0,0]) rotate([90,0,0])
                linear_extrude(height=2*arm_half_width,center=true)
                    polygon(points=offset_profile(main_flap_path(),deck_thickness));
        for(y=[-gusset_bolt_y,gusset_bolt_y],
            z=[gusset_bolt_low_z,gusset_bolt_high_z])
            translate([side>0 ? riser_inner_x-1 : -riser_outer_x-1,y,z])
                rotate([0,90,0]) cylinder(h=deck_thickness+2,d=10);
        for(y=[-50.8,50.8])
            translate([side*bearing_span/2,y,pad_top_z-deck_thickness-1])
                cylinder(h=deck_thickness+2,d=12);
    }
}

module raised_bracket() {
    // Continuous-thickness A36 candidate with true inside bend radii.
    // Hub relief and bolt-hole sizes remain provisional.
    color(a36_color) {
        difference() {
            translate([0,0,deck_bottom_z])
                cylinder(h=deck_thickness,d=bracket_base_diameter);
            translate([0,0,deck_bottom_z-1]) cylinder(h=deck_thickness+2,d=75);
            for(i=[0:4])
                translate([stud_circle/2*cos(hub_stud_phase_deg+i*72),
                           stud_circle/2*sin(hub_stud_phase_deg+i*72),deck_bottom_z-1])
                    cylinder(h=deck_thickness+2,d=14);
        }
        for(side=[-1,1]) main_flap(side);
    }
}

module pan_standoff_slot_y(x,y,z,h) {
    hull() for(dy=[-(pan_standoff_slot_length-pan_standoff_slot_width)/2,
                    (pan_standoff_slot_length-pan_standoff_slot_width)/2])
        translate([x,y+dy,z]) cylinder(h=h,d=pan_standoff_slot_width);
}

module pan_motor_mount_plate() {
    // Bolts on top of the main bracket with the same five hub studs.
    if(show_motor_plates) color(a36_color)
        difference() {
            union() {
                translate([0,0,deck_top_z])
                    cylinder(h=pan_motor_plate_thickness,d=bracket_base_diameter);
                translate([0,0,deck_top_z]) linear_extrude(height=pan_motor_plate_thickness)
                    hull() for(x=[-pan_motor_plate_half_width+motor_plate_corner_radius,
                                   pan_motor_plate_half_width-motor_plate_corner_radius],
                               y=[pan_motor_plate_end_y+motor_plate_corner_radius,-70])
                        translate([x,y]) circle(r=motor_plate_corner_radius);
            }
            translate([0,0,deck_top_z-1])
                cylinder(h=pan_motor_plate_thickness+2,d=75);
            for(i=[0:4])
                translate([stud_circle/2*cos(hub_stud_phase_deg+i*72),
                           stud_circle/2*sin(hub_stud_phase_deg+i*72),deck_top_z-1])
                    cylinder(h=pan_motor_plate_thickness+2,d=14);
            translate([0,pan_motor_center_y,deck_top_z-1])
                cylinder(h=pan_motor_plate_thickness+2,d=pan_motor_hole_diameter);
            for(x=[-pan_motor_bolt_offset,pan_motor_bolt_offset],
                y=[pan_motor_center_y-pan_standoff_offset,
                   pan_motor_center_y+pan_standoff_offset])
                pan_standoff_slot_y(x,y,deck_top_z-1,pan_motor_plate_thickness+2);
        }
}

module pan_motor_adapter_plate() {
    // Narrow adapter on the output face, with separate motor and stand-off
    // patterns. Stand-offs sit just outboard, in the motor bolts' Y rows.
    if(show_motor_plates) color(a36_color)
        difference() {
            translate([0,pan_motor_center_y,
                       pan_motor_gearbox_top_z-pan_motor_gearbox_height-pan_adapter_plate_thickness])
                linear_extrude(height=pan_adapter_plate_thickness)
                    hull() for(x=[-pan_adapter_plate_x/2+pan_adapter_corner_radius,
                                   pan_adapter_plate_x/2-pan_adapter_corner_radius],
                               y=[-pan_adapter_plate_size/2+pan_adapter_corner_radius,
                                   pan_adapter_plate_size/2-pan_adapter_corner_radius])
                        translate([x,y]) circle(r=pan_adapter_corner_radius);
            translate([-pan_motor_flange_size/2-1,
                       pan_motor_center_y-pan_motor_flange_size/2-1,
                       pan_motor_gearbox_top_z-pan_motor_gearbox_height-pan_adapter_plate_thickness-1])
                cube([pan_motor_flange_size+2,pan_motor_flange_size+2,
                      pan_adapter_plate_thickness+2]);
            for(x=[-pan_motor_bolt_offset,pan_motor_bolt_offset],
                y=[pan_motor_center_y-pan_standoff_offset,
                   pan_motor_center_y+pan_standoff_offset])
                translate([x,y,pan_motor_gearbox_top_z-pan_motor_gearbox_height-pan_adapter_plate_thickness-1])
                    cylinder(h=pan_adapter_plate_thickness+2,d=9);
        }
}

module pan_motor_flange_plate() {
    // Motor's own 90-mm output-face flange, separate from the narrow adapter.
    if(show_motor_plates) color([0.49,0.55,0.59])
        difference() {
            translate([-pan_motor_flange_size/2,
                       pan_motor_center_y-pan_motor_flange_size/2,
                       pan_motor_gearbox_top_z-pan_motor_gearbox_height-pan_motor_flange_thickness])
                cube([pan_motor_flange_size,pan_motor_flange_size,pan_motor_flange_thickness]);
            translate([0,pan_motor_center_y,
                       pan_motor_gearbox_top_z-pan_motor_gearbox_height-pan_motor_flange_thickness-1])
                cylinder(h=pan_motor_flange_thickness+2,d=pan_motor_hole_diameter);
            for(x=[-pan_motor_bolt_offset,pan_motor_bolt_offset],
                y=[pan_motor_center_y-pan_motor_bolt_offset,
                   pan_motor_center_y+pan_motor_bolt_offset])
                translate([x,y,pan_motor_gearbox_top_z-pan_motor_gearbox_height-pan_motor_flange_thickness-1])
                    cylinder(h=pan_motor_flange_thickness+2,d=9);
        }
}

module pan_motor_flange_bolts() {
    if(show_pan_drive && show_motor_plates)
        color([0.60,0.64,0.67])
            for(x=[-pan_motor_bolt_offset,pan_motor_bolt_offset],
                y=[pan_motor_center_y-pan_motor_bolt_offset,
                   pan_motor_center_y+pan_motor_bolt_offset]) {
                translate([x,y,pan_motor_gearbox_top_z-pan_motor_gearbox_height-pan_motor_flange_thickness-2])
                    cylinder(h=2,d=13);
                translate([x,y,pan_motor_gearbox_top_z-pan_motor_gearbox_height-pan_motor_flange_thickness-2])
                    cylinder(h=pan_motor_flange_thickness+8,d=8);
            }
}

module pan_motor_standoffs() {
    if(show_pan_drive && show_motor_plates)
        color([0.62,0.66,0.69])
            for(x=[-pan_motor_bolt_offset,pan_motor_bolt_offset],
                y=[pan_motor_center_y-pan_standoff_offset,
                   pan_motor_center_y+pan_standoff_offset]) {
                translate([x,y,pan_motor_gearbox_top_z-pan_motor_gearbox_height])
                    difference() {
                        cylinder(h=deck_top_z-(pan_motor_gearbox_top_z-pan_motor_gearbox_height),d=14);
                        translate([0,0,-1]) cylinder(h=deck_top_z-(pan_motor_gearbox_top_z-pan_motor_gearbox_height)+2,d=8);
                    }
                translate([x,y,pan_motor_gearbox_top_z-pan_motor_gearbox_height-pan_adapter_plate_thickness-2])
                    cylinder(h=deck_top_z-(pan_motor_gearbox_top_z-pan_motor_gearbox_height)+pan_motor_plate_thickness+pan_adapter_plate_thickness+9,d=7.5);
                translate([x,y,pan_motor_gearbox_top_z-pan_motor_gearbox_height-pan_adapter_plate_thickness-2])
                    cylinder(h=2,d=14);
                translate([x,y,deck_top_z+pan_motor_plate_thickness])
                    cylinder(h=2.5,d=15);
                translate([x,y,deck_top_z+pan_motor_plate_thickness+2.5])
                    cylinder(h=5,d=12,$fn=6);
            }
}

module pan_drive_chain_hull(radial_offset,axial_width) {
    hull() {
        translate([0,0,pan_chain_center_z-axial_width/2])
            cylinder(h=axial_width,r=fixed_sprocket_pitch_radius+radial_offset);
        translate([0,-pan_chain_center_distance,pan_chain_center_z-axial_width/2])
            cylinder(h=axial_width,r=motor_pinion_pitch_radius+radial_offset);
    }
}

module pan_drive_chain() {
    if(show_pan_drive && show_motor_plates)
        color([0.12,0.14,0.16]) difference() {
            pan_drive_chain_hull(tilt_chain_radial_half,tilt_chain_width);
            pan_drive_chain_hull(-tilt_chain_radial_half,tilt_chain_width+2);
        }
}

module pan_gearmotor() {
    // Same right-angle gearmotor proxy as the tilt drive, mounted beneath the
    // pan plate: its output points down and its motor body extends along -X.
    if(show_pan_drive && show_motor_plates) {
        pan_motor_gearbox_bottom_z = pan_motor_gearbox_top_z-pan_motor_gearbox_height;
        pan_motor_mid_z = (pan_motor_gearbox_top_z+pan_motor_gearbox_bottom_z)/2;
        pan_motor_body_x0 = -35-pan_motor_body_length;
        color([0.39,0.45,0.49])
            translate([0,pan_motor_center_y,pan_motor_gearbox_bottom_z])
                cylinder(h=pan_motor_gearbox_height,d=pan_motor_gearbox_diameter);
        color([0.28,0.34,0.39])
            translate([pan_motor_body_x0,pan_motor_center_y,pan_motor_mid_z])
                rotate([0,90,0]) cylinder(h=pan_motor_body_length,d=pan_motor_body_diameter);
        color([0.21,0.27,0.31])
            translate([pan_motor_body_x0-5,pan_motor_center_y,pan_motor_mid_z])
                rotate([0,90,0]) cylinder(h=8,d=pan_motor_body_diameter+2);
        color([0.76,0.79,0.81])
            translate([0,pan_motor_center_y,pan_chain_center_z+tilt_sprocket_thickness/2])
                cylinder(h=pan_motor_gearbox_bottom_z-(pan_chain_center_z+tilt_sprocket_thickness/2),
                         d=motor_output_diameter);
    }
}

module pan_motor_output_sprocket() {
    if(show_pan_drive && show_motor_plates)
        color([0.35,0.38,0.42])
            translate([0,-pan_chain_center_distance,pan_chain_center_z])
                difference() {
                    union() {
                        cylinder(h=tilt_sprocket_thickness,
                                 r=motor_pinion_root_radius,center=true);
                        for(i=[0:motor_pinion_teeth-1])
                            rotate([0,0,i*360/motor_pinion_teeth])
                                translate([-2.2,motor_pinion_root_radius-0.5,
                                           -tilt_sprocket_thickness/2])
                                    cube([4.4,motor_pinion_tip_radius-motor_pinion_root_radius+0.5,
                                          tilt_sprocket_thickness]);
                        cylinder(h=10,r=12,center=true);
                    }
                    cylinder(h=12,d=motor_output_diameter,center=true);
                }
}

module tilt_motor_mount_plate() {
    // +X riser; the profile halves mirror across the motor-height X-axis.
    // A tool-radius step joins the compact motor pad to the taller bracket slot pad.
    if(show_motor_plates) color(a36_color)
        difference() {
            translate([riser_outer_x,0,0]) rotate([0,0,90]) rotate([90,0,0])
                linear_extrude(height=tilt_motor_plate_thickness)
                    offset(r=tilt_motor_plate_corner_radius)
                        offset(delta=-tilt_motor_plate_corner_radius)
                            polygon(points=[[tilt_motor_plate_y_min,tilt_motor_center_z-tilt_motor_pad_half_height],
                                            [tilt_motor_plate_y_min,tilt_motor_center_z+tilt_motor_pad_half_height],
                                            [tilt_motor_plate_y_step,tilt_motor_center_z+tilt_motor_pad_half_height],
                                            [tilt_motor_plate_y_step,tilt_motor_center_z+tilt_motor_plate_half_height],
                                            [tilt_motor_plate_y_max,tilt_motor_center_z+tilt_motor_plate_half_height],
                                            [tilt_motor_plate_y_max,tilt_motor_center_z-tilt_motor_plate_half_height],
                                            [tilt_motor_plate_y_step,tilt_motor_center_z-tilt_motor_plate_half_height],
                                            [tilt_motor_plate_y_step,tilt_motor_center_z-tilt_motor_pad_half_height]]);
            translate([riser_outer_x-1,tilt_motor_center_y,tilt_motor_center_z])
                rotate([0,90,0]) cylinder(h=tilt_motor_plate_thickness+2,
                                           d=30);
            for(y=[tilt_motor_center_y-30,tilt_motor_center_y+30],
                z=[tilt_motor_center_z-30,tilt_motor_center_z+30])
                translate([riser_outer_x-1,y,z]) rotate([0,90,0])
                    cylinder(h=tilt_motor_plate_thickness+2,d=9);
            for(y=[-gusset_bolt_y,gusset_bolt_y],
                z=[tilt_motor_center_z-tilt_motor_mount_slot_row_offset,
                   tilt_motor_center_z+tilt_motor_mount_slot_row_offset])
                hull() for(dz=[-(tilt_motor_mount_slot_length-tilt_motor_mount_slot_width)/2,
                                (tilt_motor_mount_slot_length-tilt_motor_mount_slot_width)/2])
                    translate([riser_outer_x-1,y,z+dz]) rotate([0,90,0])
                        cylinder(h=tilt_motor_plate_thickness+2,d=tilt_motor_mount_slot_width);
        }
}

module gusset_sheet(side) {
    difference() {
        if(side>0)
            translate([0,0,gusset_bottom_z])
                linear_extrude(height=gusset_height)
                    polygon(points=offset_profile(gusset_path(),gusset_thickness));
        else
            mirror([0,1,0]) translate([0,0,gusset_bottom_z])
                linear_extrude(height=gusset_height)
                    polygon(points=offset_profile(gusset_path(),gusset_thickness));
        for(end=[-1,1],z=[gusset_bolt_low_z,gusset_bolt_high_z])
            translate([end>0 ? riser_inner_x-gusset_thickness-1 : -riser_inner_x-1,
                       side*gusset_bolt_y,z])
                rotate([0,90,0]) cylinder(h=gusset_thickness+2,d=10);
        for(x=[-lower_mast_plate_bolt_x,lower_mast_plate_bolt_x])
            translate([x,side*(arm_half_width+gusset_thickness/2),lower_mast_plate_bolt_z])
                rotate([90,0,0]) cylinder(h=gusset_thickness+2,d=10,center=true);
    }
}

module bolt_on_gussets() {
    // Separate A36 plates with radiused end returns on inward riser faces.
    if(show_gussets)
        for(side=[-1,1]) {
            color(a36_color) gusset_sheet(side);
            for(end=[-1,1],z=[gusset_bolt_low_z,gusset_bolt_high_z]) {
                added = end>0 && show_motor_plates ? tilt_motor_plate_thickness : 0;
                outer_face = riser_outer_x + added;
                color([0.70,0.72,0.73])
                    translate([end>0 ? riser_inner_x-gusset_thickness : -riser_outer_x,
                               side*gusset_bolt_y,z])
                        rotate([0,90,0]) cylinder(h=deck_thickness+gusset_thickness+added,d=10);
                color([0.72,0.74,0.75]) {
                    translate([end>0 ? outer_face : -riser_outer_x-1.5,
                               side*gusset_bolt_y,z])
                        rotate([0,90,0]) cylinder(h=1.5,d=22);
                    translate([end>0 ? riser_inner_x-gusset_thickness-1.5 : -riser_inner_x+gusset_thickness,
                               side*gusset_bolt_y,z])
                        rotate([0,90,0]) cylinder(h=1.5,d=22);
                }
                color([0.54,0.57,0.59]) {
                    translate([end>0 ? outer_face+1.5 : -riser_outer_x-7.5,
                               side*gusset_bolt_y,z])
                        rotate([0,90,0]) cylinder(h=6,d=18,$fn=6);
                    translate([end>0 ? riser_inner_x-gusset_thickness-8.5 : -riser_inner_x+gusset_thickness+1.5,
                               side*gusset_bolt_y,z])
                        rotate([0,90,0]) cylinder(h=7,d=18,$fn=6);
                }
            }
        }
}

module upper_mast_bridge_plate() {
    // Bearing bolts pass through this plate and both inward bearing pads.
    difference() {
        translate([-upper_mast_plate_half_x,-upper_mast_plate_half_y,pad_top_z])
            cube([2*upper_mast_plate_half_x,2*upper_mast_plate_half_y,mast_plate_thickness]);
        translate([0,mast_hole_y,pad_top_z-1])
            cylinder(h=mast_plate_thickness+2,d=mast_hole_diameter);
        for(x=[-bearing_span/2,bearing_span/2],y=[-50.8,50.8])
            translate([x,y,pad_top_z-1]) cylinder(h=mast_plate_thickness+2,d=12);
    }
}

module lower_mast_bridge_plate() {
    // U-shaped removable plate: tabs bolt against the inner gusset faces.
    // A relief between the +Y tabs preserves stock beyond the offset mast hole.
    difference() {
        union() {
            difference() {
                rotate([0,0,90]) rotate([90,0,0])
                    linear_extrude(height=2*lower_mast_plate_half_x,center=true)
                        polygon(points=offset_profile(lower_mast_plate_path(),mast_plate_thickness));
                translate([-lower_mast_tongue_half_x,lower_mast_plate_flat_half_y,lower_mast_plate_bottom_z-1])
                    cube([2*lower_mast_tongue_half_x,100,100]);
            }
            translate([-lower_mast_tongue_half_x,lower_mast_plate_flat_half_y,lower_mast_plate_bottom_z])
                cube([2*lower_mast_tongue_half_x,
                      lower_mast_tongue_end_y-lower_mast_plate_flat_half_y,
                      mast_plate_thickness]);
        }
        translate([0,mast_hole_y,lower_mast_plate_bottom_z-1])
            cylinder(h=mast_plate_thickness+2,d=mast_hole_diameter);
        for(x=[-lower_mast_plate_bolt_x,lower_mast_plate_bolt_x],side=[-1,1])
            translate([x,side*lower_mast_plate_tab_center_y,lower_mast_plate_bolt_z])
                rotate([90,0,0]) cylinder(h=mast_plate_thickness+2,d=10,center=true);
    }
}

module mast_guide_plates() {
    if(show_mast_plates) color(a36_color) {
        upper_mast_bridge_plate();
        if(show_gussets) lower_mast_bridge_plate();
    }
    if(show_mast_plates && show_gussets)
        for(x=[-lower_mast_plate_bolt_x,lower_mast_plate_bolt_x],side=[-1,1]) {
            // Removable lower bridge: bolt crosses its upright tab and gusset.
            color([0.70,0.72,0.73])
                translate([x,side*arm_half_width,lower_mast_plate_bolt_z])
                    rotate([90,0,0]) cylinder(h=gusset_thickness+mast_plate_thickness,d=10,center=true);
            color([0.72,0.74,0.75])
                for(y=[side*(arm_half_width-mast_plate_thickness-0.75),side*(arm_half_width+gusset_thickness+0.75)])
                    translate([x,y,lower_mast_plate_bolt_z])
                        rotate([90,0,0]) cylinder(h=1.5,d=22,center=true);
            color([0.54,0.57,0.59])
                for(y=[side*(arm_half_width-mast_plate_thickness-4.5),side*(arm_half_width+gusset_thickness+4.5)])
                    translate([x,y,lower_mast_plate_bolt_z])
                        rotate([90,0,0]) cylinder(h=6,d=18,center=true,$fn=6);
        }
}

module wind_mast() {
    // Centerline follows the two offset holes. Wind-sensor head is not modeled.
    if(show_mast)
        color([0.66,0.70,0.72])
            translate([0,mast_hole_y,mast_bottom_z])
                difference() {
                    cylinder(h=mast_top_z-mast_bottom_z,d=mast_outer_diameter);
                    translate([0,0,-1])
                        cylinder(h=mast_top_z-mast_bottom_z+2,
                                 d=mast_outer_diameter-2*mast_wall);
                }
}

module bearing_proxy(x) {
    // Simplified 6244K56 envelope: base sits on bridge plate above pad.
    color([0.29,0.34,0.42])
        translate([x-bearing_base_width/2,-bearing_base_length/2,upper_mast_plate_top_z])
            cube([bearing_base_width,bearing_base_length,12]);
    // Top half-circle meets vertical tangent sides down to the mounting base.
    color([0.31,0.35,0.42]) difference() {
        union() {
            translate([x-bearing_base_width/2,
                       -(bearing_overall_height-bearing_center_height),
                       upper_mast_plate_top_z+12])
                cube([bearing_base_width,
                      2*(bearing_overall_height-bearing_center_height),
                      shaft_center_z-upper_mast_plate_top_z-12]);
            intersection() {
                translate([x,0,shaft_center_z]) rotate([0,90,0])
                    cylinder(h=bearing_base_width,
                             d=2*(bearing_overall_height-bearing_center_height),center=true);
                translate([x-bearing_base_width/2-1,
                           -(bearing_overall_height-bearing_center_height)-1,
                           shaft_center_z])
                    cube([bearing_base_width+2,
                          2*(bearing_overall_height-bearing_center_height)+2,
                          bearing_overall_height-bearing_center_height+1]);
            }
        }
        translate([x,0,shaft_center_z]) rotate([0,90,0])
            cylinder(h=bearing_base_width+2,d=shaft_diameter,center=true);
    }
    for(y=[-50.8,50.8])
        color([0.70,0.72,0.73])
            translate([x,y,pad_top_z-deck_thickness])
                cylinder(h=deck_thickness+mast_plate_thickness+12,d=10);
    for(y=[-50.8,50.8])
        color([0.64,0.66,0.68])
            translate([x,y,upper_mast_plate_top_z+12]) cylinder(h=7,d=17,$fn=6);
}

module tilt_shaft() {
    color([0.76,0.79,0.80])
        translate([0,0,shaft_center_z]) rotate([0,90,0])
            cylinder(h=shaft_length,d=shaft_diameter,center=true);
}

module tilt_shaft_sprocket() {
    // Bored plate and collar; shaft-lock and final tooth profile are undecided.
    if(show_tilt_sprocket)
        color([0.35,0.38,0.42])
            translate([tilt_sprocket_x,0,shaft_center_z])
                rotate([180-tilt_angle,0,0]) rotate([0,90,0])
                difference() {
                    union() {
                        cylinder(h=tilt_sprocket_thickness,
                                 r=tilt_sprocket_root_radius,center=true);
                        for(i=[0:tilt_sprocket_teeth-1])
                            rotate([0,0,i*360/tilt_sprocket_teeth])
                                translate([-2.8,tilt_sprocket_root_radius-0.5,
                                           -tilt_sprocket_thickness/2])
                                    cube([5.6,
                                          tilt_sprocket_tip_radius-tilt_sprocket_root_radius+0.5,
                                          tilt_sprocket_thickness]);
                        cylinder(h=tilt_sprocket_collar_width,
                                 r=tilt_sprocket_collar_radius,center=true);
                    }
                    cylinder(h=tilt_sprocket_collar_width+2,
                             d=shaft_diameter,center=true);
                }
}

module tilt_gearmotor() {
    // Gearbox bolts behind the +X motor plate on its inside (-X) face.
    // Same Ø90 x 6.35-mm output flange as the pan motor; body hangs -Z.
    if(show_tilt_drive && show_motor_plates) {
        color([0.49,0.55,0.59]) difference() {
            translate([motor_mount_flange_x-tilt_motor_flange_thickness,
                       tilt_motor_center_y-motor_flange_size/2,
                       tilt_motor_center_z-motor_flange_size/2])
                cube([tilt_motor_flange_thickness,motor_flange_size,motor_flange_size]);
            translate([motor_mount_flange_x-tilt_motor_flange_thickness-1,
                       tilt_motor_center_y,tilt_motor_center_z]) rotate([0,90,0])
                cylinder(h=tilt_motor_flange_thickness+2,d=30);
            for(y=[tilt_motor_center_y-motor_flange_hole_spacing/2,
                   tilt_motor_center_y+motor_flange_hole_spacing/2],
                z=[tilt_motor_center_z-motor_flange_hole_spacing/2,
                   tilt_motor_center_z+motor_flange_hole_spacing/2])
                translate([motor_mount_flange_x-tilt_motor_flange_thickness-1,y,z])
                    rotate([0,90,0]) cylinder(h=tilt_motor_flange_thickness+2,d=9);
        }
        for(y=[tilt_motor_center_y-30,tilt_motor_center_y+30],
            z=[tilt_motor_center_z-30,tilt_motor_center_z+30]) {
            color([0.70,0.72,0.74])
                translate([motor_mount_flange_x-tilt_motor_flange_thickness-2,y,z]) rotate([0,90,0])
                    cylinder(h=tilt_motor_flange_thickness+tilt_motor_plate_thickness+7,d=9);
            color([0.66,0.68,0.70])
                translate([motor_mount_flange_x+tilt_motor_plate_thickness,y,z])
                    rotate([0,90,0]) cylinder(h=5,d=16);
        }
        color([0.39,0.45,0.49]) {
            translate([motor_gearbox_x1,tilt_motor_center_y,tilt_motor_center_z])
                rotate([0,90,0])
                    cylinder(h=motor_mount_flange_x-tilt_motor_flange_thickness-motor_gearbox_x1,d=52);
            translate([motor_gearbox_x0,tilt_motor_center_y,tilt_motor_center_z])
                rotate([0,90,0])
                    cylinder(h=motor_gearbox_x1-motor_gearbox_x0,d=70);
        }
        color([0.28,0.34,0.39])
            translate([158,tilt_motor_center_y,75]) cylinder(h=145,d=56);
        color([0.21,0.27,0.31])
            translate([158,tilt_motor_center_y,70]) cylinder(h=13,d=58);
        color([0.32,0.37,0.41])
            translate([motor_gearbox_x1,tilt_motor_center_y,tilt_motor_center_z])
                rotate([0,90,0])
                    cylinder(h=motor_mount_flange_x-tilt_motor_flange_thickness-motor_gearbox_x1,d=46);
        color([0.76,0.79,0.81])
            translate([motor_gearbox_x1,tilt_motor_center_y,tilt_motor_center_z])
                rotate([0,90,0])
                    cylinder(h=tilt_sprocket_x+15-motor_gearbox_x1,
                             d=motor_output_diameter);
    }
}

module motor_output_sprocket() {
    if(show_tilt_drive && show_motor_plates)
        color([0.35,0.38,0.42])
            translate([tilt_sprocket_x,tilt_motor_center_y,tilt_motor_center_z])
                rotate([0,90,0]) difference() {
                    union() {
                        cylinder(h=tilt_sprocket_thickness,
                                 r=motor_pinion_root_radius,center=true);
                        for(i=[0:motor_pinion_teeth-1])
                            rotate([0,0,i*360/motor_pinion_teeth])
                                translate([-2.2,motor_pinion_root_radius-0.5,
                                           -tilt_sprocket_thickness/2])
                                    cube([4.4,motor_pinion_tip_radius-motor_pinion_root_radius+0.5,
                                          tilt_sprocket_thickness]);
                        cylinder(h=10,r=12,center=true);
                    }
                    cylinder(h=12,d=motor_output_diameter,center=true);
                }
}

module tilt_chain_hull(radial_offset,axial_width) {
    hull() {
        translate([tilt_sprocket_x,tilt_motor_center_y,tilt_motor_center_z])
            rotate([0,90,0])
                cylinder(h=axial_width,r=motor_pinion_pitch_radius+radial_offset,
                         center=true);
        translate([tilt_sprocket_x,0,shaft_center_z])
            rotate([0,90,0])
                cylinder(h=axial_width,r=tilt_sprocket_pitch_radius+radial_offset,
                         center=true);
    }
}

module tilt_drive_chain() {
    if(show_tilt_drive && show_motor_plates && show_tilt_sprocket)
        color([0.12,0.14,0.16]) difference() {
            tilt_chain_hull(tilt_chain_radial_half,tilt_chain_width);
            tilt_chain_hull(-tilt_chain_radial_half,tilt_chain_width+2);
        }
}

module square_tube(x0,x1,y0,y1,z0=vertical_tube_bottom) {
    color([0.08,0.10,0.12])
        translate([x0,y0,z0]) cube([x1-x0,y1-y0,tube_size]);
}

module moving_shaft_mount(x) {
    // Custom-size 1-in shaft clamp proxy; outer envelope matches the bearing.
    color([0.27,0.36,0.83]) {
        difference() {
            translate([x-shaft_mount_base_width/2,-shaft_mount_base_length/2,
                       -shaft_mount_center_height])
                cube([shaft_mount_base_width,shaft_mount_base_length,
                      shaft_mount_base_thickness]);
            for(y=[-shaft_mount_hole_spacing/2,shaft_mount_hole_spacing/2])
                translate([x,y,-shaft_mount_center_height-1])
                    cylinder(h=shaft_mount_base_thickness+2,
                             d=shaft_mount_hole_diameter);
        }
        // Matching tangent-sided housing with an open 1-in bore.
        difference() {
            union() {
                translate([x-shaft_mount_base_width/2,
                           -(shaft_mount_overall_height-shaft_mount_center_height),
                           -shaft_mount_center_height+shaft_mount_base_thickness])
                    cube([shaft_mount_base_width,
                          2*(shaft_mount_overall_height-shaft_mount_center_height),
                          shaft_mount_center_height-shaft_mount_base_thickness]);
                intersection() {
                    translate([x,0,0]) rotate([0,90,0])
                        cylinder(h=shaft_mount_base_width,
                                 d=2*(shaft_mount_overall_height-shaft_mount_center_height),
                                 center=true);
                    translate([x-shaft_mount_base_width/2-1,
                               -(shaft_mount_overall_height-shaft_mount_center_height)-1,0])
                        cube([shaft_mount_base_width+2,
                              2*(shaft_mount_overall_height-shaft_mount_center_height)+2,
                              shaft_mount_overall_height-shaft_mount_center_height+1]);
                }
            }
            translate([x,0,0]) rotate([0,90,0])
                cylinder(h=shaft_mount_base_width+2,d=shaft_diameter,center=true);
        }
    }
}

module shaft_mount_spacer(x) {
    // Separate 1-in block matching the provisional custom clamp footprint.
    // Material and attachment hardware remain unspecified.
    color([0.58,0.61,0.63])
        translate([x-shaft_mount_base_width/2,-shaft_mount_base_length/2,
                   vertical_tube_top])
            cube([shaft_mount_base_width,shaft_mount_base_length,
                  shaft_mount_spacer_thickness]);
}

module moving_array() {
    // Panel viewing faces are on local -Z; their backs carry the frame.
    // Physical 0 degrees has the viewing faces upward and the frame below.
    // Winter 71 degrees tilts that face toward world +Y.
    translate([0,0,shaft_center_z]) rotate([180-tilt_angle,0,0]) {
        y_end = panel_y + panel_gap_y/2 + tube_end_overhang;
        // Four continuous top-to-bottom tubes touch the panel backs.
        for(x=[-outer_tube_x,-inner_tube_x,inner_tube_x,outer_tube_x])
            square_tube(x-tube_size/2,x+tube_size/2,
                        -y_end,y_end);
        // Four continuous rails stack behind the vertical tubes.
        for(y=[-horizontal_rail_y,lower_center_rail_y,
               upper_center_rail_y,horizontal_rail_y])
            square_tube(-horizontal_half_length,horizontal_half_length,
                        y-tube_size/2,y+tube_size/2,vertical_tube_top);
        // One-inch blocks separate the clamps from the moving square tubes.
        for(x=[-clamp_span/2,clamp_span/2]) {
            shaft_mount_spacer(x);
            moving_shaft_mount(x);
        }
        if(show_panels)
            for(xsign=[-1,1],ysign=[-1,1])
                color([0.17,0.25,0.32])
                    translate([xsign>0 ? panel_gap_x/2 : -panel_gap_x/2-panel_x,
                               ysign>0 ? panel_gap_y/2 : -panel_gap_y/2-panel_y,
                               panel_bottom])
                        cube([panel_x,panel_y,panel_proxy_thickness]);
    }
}

ground_and_post();
fixed_spindle();
fixed_spindle_sprocket();
rotate([0,0,max(pan_min,min(pan_angle,pan_max))]) {
    rotating_hub();
    raised_bracket();
    pan_motor_mount_plate();
    pan_motor_adapter_plate();
    pan_motor_flange_plate();
    pan_motor_flange_bolts();
    pan_motor_standoffs();
    pan_gearmotor();
    pan_motor_output_sprocket();
    pan_drive_chain();
    bolt_on_gussets();
    mast_guide_plates();
    wind_mast();
    tilt_motor_mount_plate();
    tilt_gearmotor();
    motor_output_sprocket();
    for(x=[-bearing_span/2,bearing_span/2]) bearing_proxy(x);
    tilt_shaft();
    tilt_shaft_sprocket();
    tilt_drive_chain();
    moving_array();
}
