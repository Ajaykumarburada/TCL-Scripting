 ### macro count, macro instance name, macro refernce name 

 set count 0
 foreach FP [get_object_name [get_cells -hierarchical -filter "is_hard_macro == true"]] {
     set inst_name [get_attribute [get_cells $FP] name]
     set ref_name [get_attribute [get_cells $FP] ref_name]
     set count [expr $count +1]
     puts "the instance name is: $inst_name"
     puts "the reference name is: $ref_name"
}
puts "the total number of macros is: $count"
