tag @s add reset
$data modify \
storage windwaves_sea:chest_gui \
temp.opened.tick."$(player_uuid)".chest_minecart_uuid \
set from \
storage windwaves_sea:chest_gui \
temp.opened.entity_list."$(player_uuid)".chest_minecart_uuid

$tag @s remove $(name)

$data modify storage windwaves_sea:chest_gui \
temp.opened.tick."$(player_uuid)".name \
set from \
storage windwaves_sea:chest_gui \
config.$(name).slot.$(slot_id).click_event.value

$function chest_gui:run/opened/click_event/show_ui/set_name with \
storage windwaves_sea:chest_gui \
temp.opened.tick."$(player_uuid)"

$function chest_gui:run/opened/click_event/show_ui/show/main with \
storage windwaves_sea:chest_gui \
temp.opened.tick."$(player_uuid)"