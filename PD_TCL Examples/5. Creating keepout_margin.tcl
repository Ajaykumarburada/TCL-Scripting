###  1. Create keepout margin for 40 macros using a foreach loop

set macro_list [get_cells -physical_context -filter "is_hard_macro==true"]
set left   5
set right  5
set top    5
set bottom 5

set count 0
foreach macro $macro_list {
    if {$count >= 40} {
        break
    }
    create_keepout_margin -type hard -outer { $left $bottom $right $top } $macro
    incr count
}

###  2. Create keepout margins using index-based loop (lrange)

set macros [get_cells -physical_context -filter "is_hard_macro==true"]
set keepout_margin {5 5 5 5}  ;# left bottom right top

# macros from 1 to 40 in indices 0 to 39
foreach macro [lrange $macros 0 39] {
    create_keepout_margin -type hard -outer $keepout_margin $macro
}

###  3. If macro names follow a pattern (e.g., MACRO_1 to MACRO_40)

set keepout {5 5 5 5}

for {set i 1} {$i <= 40} {incr i} {
    set macro_name "[get_cells -physical_context -filter "is_hard_macro==true"]"
    create_keepout_margin -type hard -outer $keepout [get_cells $macro_name]
}






















