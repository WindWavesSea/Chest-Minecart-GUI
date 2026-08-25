$execute as @a[limit=1,nbt={UUID:$(player_uuid)}] at @s if predicate chest_gui:no_speed run return fail

#此处谓词检测
function chest_gui:run/opened/clear with storage windwaves_sea:chest_gui temp.opened.tick

data remove storage windwaves_sea:chest_gui temp.opened.tick