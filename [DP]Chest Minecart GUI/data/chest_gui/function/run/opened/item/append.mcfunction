$data remove storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)".slot_list.[0]
$data modify storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)".slot_list append value "$(slot_id)"

$data remove storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)".slot_id