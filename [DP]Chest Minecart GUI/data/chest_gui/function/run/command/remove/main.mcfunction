data remove entity @s Items
data modify storage windwaves_sea:chest_gui temp.remove.chest_minecart_uuid set from \
entity @s UUID

function chest_gui:run/command/remove with storage windwaves_sea:chest_gui temp.remove

kill @s

data remove storage windwaves_sea:chest_gui temp.remove