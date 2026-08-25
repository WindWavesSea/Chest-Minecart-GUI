$execute as @a[limit=1,nbt={UUID:$(player_uuid)}] at @s run \
clear @s $(item_id)[minecraft:custom_data={tag:["chest_gui"]}]

$function chest_gui:run/opened/click_event/reset/main with storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)"

$execute as @a[limit=1,nbt={UUID:$(player_uuid)}] at @s run function chest_gui:run/opened/click_event/run_command/0 with storage windwaves_sea:chest_gui config.$(name).slot.$(slot_id).click_event