####   Method 1: pin_guide Method  ####

get_ports -filter "direction == in"
sizeof_collection [get_ports -filter "direction == in"]

get_ports -filter "direction == out"
sizeof_collection [get_ports -filter "direction == out"]

create_pin_guide -name inputports -boundary {{296.462 437.959} {304.307 345.248}} -layers {M3 M5} [all_inputs]
place_pins -ports [all_inputs]

create_pin_guide -name inputports -boundary {{328.554 298.180} {436.241 305.312}} -layers {M2 M4} [all_outputs]
place_pins -ports [all_outputs]

####  Method 2: Set_individual method  ####

#placing io output ports by using individual pin constraints

set i 280
foreach pin [get_object_name [get_ports [all_outputs]]] {
    set_individual_pin_constraints -location [list $i 281] -allowed_layers [get_layers M2] -ports [get_ports $pin]
    set i [expr $i +1]
}
place_pins -ports [get_ports -filter "direction == out"]
