$execute if data storage windwaves_sea:chest_gui {config:{$(name):{mode:"npc"}}} run \
return run function chest_gui:run/summon/run/0

$execute if data storage windwaves_sea:chest_gui {config:{$(name):{mode:"normal"}}} run \
function chest_gui:run/summon/run/1 with storage windwaves_sea:chest_gui temp.summon