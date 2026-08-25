data modify storage windwaves_sea:chest_gui temp.open.chest_minecart_UUID set from entity @s UUID
execute as @a[advancements={chest_gui:open=true}] at @s run function chest_gui:run/open/player

tag @s add chest_gui_opened

function chest_gui:run/open/uuid with storage windwaves_sea:chest_gui temp.open

function chest_gui:run/open/get_name with storage windwaves_sea:chest_gui temp.open

data remove storage windwaves_sea:chest_gui temp.open.chest_minecart_UUID

function chest_gui:run/open/item/main with storage windwaves_sea:chest_gui temp.open

data remove storage windwaves_sea:chest_gui temp.open

data remove storage windwaves_sea:chest_gui temp.open.player_UUID