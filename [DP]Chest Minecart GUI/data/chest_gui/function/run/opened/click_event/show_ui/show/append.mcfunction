data remove storage windwaves_sea:chest_gui \
temp.opened.tick.temp.slot_id_list.[0]

$data modify storage windwaves_sea:chest_gui \
temp.opened.tick.temp.slot_id_list \
append value "$(slot_id)"