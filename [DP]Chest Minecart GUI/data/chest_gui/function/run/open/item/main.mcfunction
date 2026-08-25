$data modify storage windwaves_sea:chest_gui temp.open.first_slot_id set from \
storage windwaves_sea:chest_gui config.$(name).slot_id.[0]

$data modify storage windwaves_sea:chest_gui temp.open.slot_id set from \
storage windwaves_sea:chest_gui config.$(name).slot_id.[0]

$execute as @s at @s run summon chest_minecart ~ ~ ~ \
{\
    Tags:["chest_gui","$(name)","new"],\
    Silent:true,\
    Invulnerable:true,\
    NoGravity:1b,\
    LootTable:"chest_gui:chest_gui"\
    ,DisplayState:{Name:"barrier"}\
}

$execute if entity @s[tag=top_gui] as @n[tag=new,type=chest_minecart] at @s run \
function chest_gui:run/open/item/add_tag {tag:"top_gui",name:"$(name)"}
$execute if entity @s[tag=down_gui] as @n[tag=new,type=chest_minecart] at @s run \
function chest_gui:run/open/item/add_tag {tag:"down_gui",name:"$(name)"}

execute as @s at @s run tp @s ~ ~4 ~

function chest_gui:run/open/item/get_item with storage windwaves_sea:chest_gui temp.open

function chest_gui:run/open/item/append with storage windwaves_sea:chest_gui temp.open

$execute if data storage windwaves_sea:chest_gui config.$(name).slot_id.[1] run function chest_gui:run/open/item/recursion with storage windwaves_sea:chest_gui temp.open

data remove storage windwaves_sea:chest_gui temp.open.slot_id
data remove storage windwaves_sea:chest_gui temp.open.first_slot_id

function chest_gui:run/open/item/run/main with storage windwaves_sea:chest_gui temp.open