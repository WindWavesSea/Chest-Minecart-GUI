#检查玩家是否关闭ui
data modify storage windwaves_sea:chest_gui temp.opened.tick.chest_minecart_uuid set from entity @s UUID

function chest_gui:run/opened/player_uuid with storage windwaves_sea:chest_gui temp.opened.tick

function chest_gui:run/opened/execute with storage windwaves_sea:chest_gui temp.opened.tick

##检查玩家是否点击物品
#获取ui注册名称
function chest_gui:run/opened/get_name with storage windwaves_sea:chest_gui temp.opened.tick

#递归检查物品是否被点击(最多5次)
function chest_gui:run/opened/item/main with storage windwaves_sea:chest_gui temp.opened.tick
