set util 0.6
set offset 5
set shape "L"
if {$shape == "L"} {
    set side_ratio {1 1 1 1}
}
initialize_floorplan -core_utilization $util -core_offset $offset -shape $shape -use_site_row

