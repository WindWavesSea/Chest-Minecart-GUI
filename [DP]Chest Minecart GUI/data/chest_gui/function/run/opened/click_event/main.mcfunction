$execute if data storage windwaves_sea:chest_gui \
{config:{$(name):{slot:{$(slot_id):{click_event:{action:"show_ui"}}}}}} \
unless entity @s[tag=reset] run \
return run \
function chest_gui:run/opened/click_event/show_ui/main with storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)"

$execute if data storage windwaves_sea:chest_gui {config:{$(name):{slot:{$(slot_id):{click_event:{action:"run_command"}}}}}} run \
function chest_gui:run/opened/click_event/run_command/main with storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)"

$data remove storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)".item_id
$data remove storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)".item_components

