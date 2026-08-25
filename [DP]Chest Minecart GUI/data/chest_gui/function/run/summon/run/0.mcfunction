$summon chest_minecart $(x) $(y) $(z) {Tags:["chest_gui","$(name)","down_gui"],Silent:true,Invulnerable:true,NoGravity:1b,LootTable:"chest_gui:chest_gui",DisplayState:{Name:"barrier"}}

$execute positioned $(x) $(y) $(z) run team join minecart @n[type=chest_minecart,tag=chest_gui,tag=down_gui]

$execute positioned $(x) $(y) $(z) as @n[tag=down_gui,type=chest_minecart,tag=$(name)] run \
function chest_gui:run/summon/run/add_uuid

$execute positioned $(x) $(y) $(z) run summon chest_minecart ~ ~1 ~ \
{\
    Tags:["chest_gui","$(name)","top_gui"],\
    Silent:true,\
    Invulnerable:true,\
    NoGravity:1b,\
    LootTable:"chest_gui:chest_gui"\
    ,DisplayState:{Name:"barrier"}\
}

$execute positioned $(x) $(y) $(z) run team join minecart @n[type=chest_minecart,tag=chest_gui,tag=top_gui]

$execute positioned $(x) $(y) $(z) as @n[tag=top_gui,type=chest_minecart,tag=$(name)] run \
function chest_gui:run/summon/run/add_uuid