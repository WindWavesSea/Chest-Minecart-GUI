data remove entity @s Items
kill @s

$execute as @a[limit=1,nbt={UUID:$(player_uuid)}] at @s run clear @s *[minecraft:custom_data={tag:["chest_gui"]}]

$data remove storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)"
$data remove storage windwaves_sea:chest_gui temp.opened.entity_list."$(player_uuid)"
$data remove storage windwaves_sea:chest_gui temp.opened.entity_list."$(chest_minecart_uuid)"
$data remove storage windwaves_sea:chest_gui entity."$(chest_minecart_uuid)"
