$data modify storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)".item prepend from \
storage windwaves_sea:chest_gui config.$(name).slot.$(slot_id).item

$data modify storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)".item.[0] merge value {Slot:$(slot_id)b}

$data modify storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)".item.[0].components.custom_data merge value {tag:["chest_gui"]}

$function chest_gui:run/opened/click_event/reset/run with storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)"

$data modify entity @s Items append from storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)".item.[0]

$data remove storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)".item