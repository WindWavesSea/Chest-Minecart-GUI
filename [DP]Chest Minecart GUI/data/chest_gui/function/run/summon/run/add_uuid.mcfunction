data modify storage windwaves_sea:chest_gui temp.summon.UUID set from entity @s UUID

function chest_gui:run/summon/run/add_entity with storage windwaves_sea:chest_gui temp.summon

data remove storage windwaves_sea:chest_gui temp.summon.UUID