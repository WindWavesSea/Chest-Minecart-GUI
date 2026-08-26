$execute as @s at @s run summon chest_minecart ~ ~ ~ \
{\
    Tags:["chest_gui","$(name)","new"],\
    Silent:true,\
    Invulnerable:true,\
    NoGravity:1b,\
    LootTable:"chest_gui:chest_gui",\
    DisplayState:{Name:"barrier"}\
}