# check power and ground nets are present or not i.e upf load or not?

set PG_nets [get_nets -quiet {VDD VSS}]
if {[sizeof_collection $PG_nets] == 0} {
 puts "ERROR: Power nets not found. UPF may not be loaded."
 return
}
