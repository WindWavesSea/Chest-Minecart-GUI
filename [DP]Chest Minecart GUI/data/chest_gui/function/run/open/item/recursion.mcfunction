#检查是否跳出
$data modify storage windwaves_sea:chest_gui temp.open.slot_id set from \
storage windwaves_sea:chest_gui config.$(name).slot_id.[0]

execute store result score @s chest_gui_recursion run function chest_gui:run/open/item/if with storage windwaves_sea:chest_gui temp.open

execute if score @s chest_gui_recursion matches 1 run return run scoreboard players reset @s chest_gui_recursion

#执行读取物品表指令
function chest_gui:run/open/item/get_item with storage windwaves_sea:chest_gui temp.open

function chest_gui:run/open/item/append with storage windwaves_sea:chest_gui temp.open

data remove storage windwaves_sea:chest_gui temp.summon.slot_id

function chest_gui:run/open/item/recursion with storage windwaves_sea:chest_gui temp.open


