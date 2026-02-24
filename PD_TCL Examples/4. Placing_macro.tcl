#### Placing macros by automation way and macros exist or not

set_app_options -name plan.macro.macro_place_only -value true               ;# Only macros are placed during this stage, and standard cells are ignored.
set_app_options -name plan.macro.grouping_by_hierarchy -value true          ;# Macros are grouped and placed according to design hierarchy.
set_app_options -name plan.macro.spacing_rule_heights -value {15um 15um}    ;# Minimum vertical spacing between macros is defined to allow routing and power straps.
set_app_options -name plan.macro.spacing_rule_widths -value {15um 15um}     ;# Minimum horizontal spacing between macros is defined.

set macro_place "create_placement -floorplan"
puts $macro_palce
if {[sizeof_collection [get_cells -hierarchical -filetr "is_hard_macro"]] == 0} {
puts "WARNING: No hard macros found in the design!"
} else {
 puts "INFO: Hard macros detected: [sizeof_collection [get_flat_cells -filter "is_hard_macro"]]"
}
