execute unless entity @s[tag=tick] run return fail
$data modify storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)".name set from storage windwaves_sea:chest_gui entity."$(chest_minecart_uuid)"
$data modify storage windwaves_sea:chest_gui temp.opened.tick.name set from storage windwaves_sea:chest_gui entity."$(chest_minecart_uuid)"

$data modify storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)".player_uuid set from storage windwaves_sea:chest_gui temp.opened.tick.player_uuid