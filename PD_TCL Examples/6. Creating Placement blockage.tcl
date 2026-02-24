
set macros [get_cells -physical_context -filter "is_hard_macro==true"]

for {set i 0} {$i < [expr {[llength $macros] - 1}]} {incr i} {

    set m1 [lindex $macros $i]
    set m2 [lindex $macros [expr {$i + 1}]]

    set b1 [get_attribute $m1 boundary]
    set b2 [get_attribute $m2 boundary]

    set x1 [lindex $b1 2]
    set y1 [lindex $b1 1]
    set x2 [lindex $b2 0]
    set y2 [lindex $b2 3]

    create_placement_blockage -type soft -boundary {{$x1 $y1 $x2 $y2}} -name bb1
}
