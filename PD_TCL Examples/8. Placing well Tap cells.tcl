
set tap_cell "tcbn28hpcplusbwp30p140hvt/TAPCELLBWP30P140"
set spacing 30
set patt "stagger"
create_tap_cells -lib_cell $tap_cell -distance $spacing -pattern $patt -prefix TAP -skip_fixed_cell
