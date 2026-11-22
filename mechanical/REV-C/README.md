# Pan and tilt drive update package — Rev C

This package revises the two motor plates and adds a separate pan adapter plate plus a fixed sprocket / spindle flange / post recess interface sheet.

## Sheets

- ST-005 Rev C — [tilt motor mount PDF](ST-005-tilt-motor-mount-REV-C.pdf), [1:1 flat DXF](dxf/ST-005-tilt-motor-mount-REV-C.dxf), [isolated model](models/ST-005-tilt-motor-mount.scad), [preview](previews/ST-005-tilt-motor-mount-REV-C.png). The plate is symmetric top-to-bottom about the motor centerline, with a square step and four vertical bracket-side slots.
- ST-006 Rev C — [pan motor mount plate PDF](ST-006-pan-motor-mount-plate-REV-C.pdf), [1:1 flat DXF](dxf/ST-006-pan-motor-mount-plate-REV-C.dxf), [isolated model](models/ST-006-pan-motor-mount.scad), [preview](previews/ST-006-pan-motor-mount-plate-REV-C.png). The flange-clearance hole and four Y-oriented tension slots reflect the latest assembly layout.
- ST-007 Rev A — [pan motor adapter PDF](ST-007-pan-motor-adapter-plate-REV-A.pdf), [1:1 flat DXF](dxf/ST-007-pan-motor-adapter-plate-REV-A.dxf), [isolated model](models/ST-007-pan-motor-adapter.scad), [preview](previews/ST-007-pan-motor-adapter-plate-REV-A.png). This is the 110 × 140 mm plate around the 90 mm motor flange, with a square clearance opening and separate stand-off holes.
- ST-008 Rev A — [fixed sprocket / spindle flange / post recess interface PDF](ST-008-fixed-sprocket-spindle-interface-REV-A.pdf), [sprocket layout model](models/ST-008-fixed-pan-sprocket.scad), [preview](previews/ST-008-fixed-sprocket-spindle-interface-REV-A.png). This is an interface drawing only. It has **no DXF** because the rectangular tooth proxy is not a valid bicycle-chain sprocket profile.

The four-sheet review set is [available as one PDF](drive-and-spindle-interface-review-REV-C.pdf). Editable vector sheet sources are in `svg/`. The earlier ST-001 through ST-004 sheets are unchanged from Rev B in the preceding package.

## Current modeled stack

The spindle flange is shown 110 × 110 × 8 mm, recessed into a matching 110 × 110 × 8 mm pocket in the 140 mm post proxy. Its top surface is at Z = 0; the fixed sprocket sits at Z = 0 to 2.2 mm. The pan pinion and chain follow that plane. The modeled vertical gap from the chain's top envelope to the adapter/flange lower face is about 9.35 mm.

## Review status

All drawings are **NOT FOR FABRICATION**. Motor dimensions and hole patterns, post material and recess, spindle flange, sprocket choice and tooth geometry, fasteners, chain alignment, and clearances are unverified. The sprocket model is schematic. The DXFs are 1:1 millimeter review flats; upload and shop import were not checked. Confirm actual interfaces, material, tolerances, strength, edge distances, tooling, and any bend development before fabrication.
