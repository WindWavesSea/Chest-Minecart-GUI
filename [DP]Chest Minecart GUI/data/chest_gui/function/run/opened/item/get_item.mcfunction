$data modify storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)".slot_id set from \
storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)".slot_list.[0]

$function chest_gui:run/opened/item/get_item0 with storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)"