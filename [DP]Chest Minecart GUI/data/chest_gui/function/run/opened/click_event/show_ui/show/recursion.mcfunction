#检查是否跳出
data modify storage windwaves_sea:chest_gui temp.opened.tick.temp.slot_id set from \
storage windwaves_sea:chest_gui \
temp.opened.tick.temp.slot_id_list.[0]

execute store result score @s chest_gui_recursion run \
function chest_gui:run/opened/click_event/show_ui/show/if \
with storage windwaves_sea:chest_gui temp.opened.tick.temp

execute if score @s chest_gui_recursion matches 1 run return run scoreboard players reset @s chest_gui_recursion

#执行读取物品表指令
function chest_gui:run/opened/click_event/show_ui/show/get_item \
with \
storage windwaves_sea:chest_gui \
temp.opened.tick.temp

function chest_gui:run/opened/click_event/show_ui/show/append \
with \
storage windwaves_sea:chest_gui \
temp.opened.tick.temp

execute store result score @s chest_gui_recursion run \
function chest_gui:run/opened/click_event/show_ui/show/if \
with storage windwaves_sea:chest_gui temp.opened.tick.temp

execute if score @s chest_gui_recursion matches 1 run return run scoreboard players reset @s chest_gui_recursion

data remove \
storage windwaves_sea:chest_gui \
temp.opened.tick.temp.slot_id

function chest_gui:run/opened/click_event/show_ui/show/recursion

