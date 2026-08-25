$data modify storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)".slot_list set from \
storage windwaves_sea:chest_gui config.$(name).slot_id

$data modify storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)".first_slot_id set from \
storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)".slot_list.[0]


$function chest_gui:run/opened/item/get_item with storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)"

$function chest_gui:run/opened/item/unless_item with storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)"

$function chest_gui:run/opened/item/append with storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)"


$function chest_gui:run/opened/item/recursion with storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)"