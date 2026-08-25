data modify storage windwaves_sea:chest_gui temp.open.summon_minecart_uuid set from entity @s UUID

function chest_gui:run/open/item/add_entity with storage windwaves_sea:chest_gui temp.open

team join minecart

$tag @s add $(tag)
tag @s remove new

data remove storage windwaves_sea:chest_gui temp.open.summon_minecart_uuid