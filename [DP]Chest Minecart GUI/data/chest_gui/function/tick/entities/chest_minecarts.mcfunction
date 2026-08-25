execute unless data entity @s[tag=chest_gui,tag=!ready,tag=!tick,tag=!chest_gui_opened,tag=!reset] {LootTable:"chest_gui:chest_gui"} run \
function chest_gui:run/open/main

execute if entity @s[tag=ready] run function chest_gui:run/open/stopwatch/main
execute if entity @s[tag=chest_gui,tag=chest_gui_opened,tag=tick,tag=!reset] run \
function chest_gui:run/opened/main