get_lib_cells -nocase *dcap_hvt*

set cell [get_lib_cells -nocase *dcap_hvt*]
# create_boundary_cell -left_boundary_cell $cell -right_boundary_cell $cell -prefix ENDCAP

set_boundary_cell_rules -left_boundary_cell $cell -right_boundary_cell $cell -at_va_boundary
compile_boundary_cells

check_boundary_cells
