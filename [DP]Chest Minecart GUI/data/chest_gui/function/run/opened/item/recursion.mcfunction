#检查是否跳出
$data modify storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)".slot_id set from \
storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)".slot_list.[0]

$function chest_gui:run/opened/item/if with storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)"


execute if score @s chest_gui_operation matches 5 run return run scoreboard players reset @s chest_gui_operation
#执行检测物品指令
$function chest_gui:run/opened/item/get_item with storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)"

$function chest_gui:run/opened/item/unless_item with storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)"

$function chest_gui:run/opened/item/append with storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)"

$function chest_gui:run/opened/item/recursion with storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)"