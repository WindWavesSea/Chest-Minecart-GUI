$data merge storage windwaves_sea:chest_gui {temp:{summon:{name:"$(name)",x:"$(x)",y:"$(y)",z:"$(z)"}}}

$scoreboard players set #temp.summon.x chest_gui_operation $(x)
$scoreboard players set #temp.summon.y chest_gui_operation $(y)
$scoreboard players set #temp.summon.z chest_gui_operation $(z)

function chest_gui:run/summon/run/execute with storage windwaves_sea:chest_gui temp.summon

data remove storage windwaves_sea:chest_gui temp.summon