$tag @s add $(name)

$data modify storage windwaves_sea:chest_gui \
temp.opened.tick.temp.slot_id_list \
set from \
storage windwaves_sea:chest_gui \
config.$(name).slot_id

$data modify storage windwaves_sea:chest_gui \
temp.opened.tick.temp.name \
set value "$(name)"

data modify storage windwaves_sea:chest_gui \
temp.opened.tick.temp.first_slot_id set from \
storage windwaves_sea:chest_gui \
temp.opened.tick.temp.slot_id_list.[0]

data modify storage windwaves_sea:chest_gui \
temp.opened.tick.temp.slot_id set from \
storage windwaves_sea:chest_gui \
temp.opened.tick.temp.slot_id_list.[0]

function chest_gui:run/opened/click_event/show_ui/show/get_item \
with \
storage windwaves_sea:chest_gui \
temp.opened.tick.temp

function chest_gui:run/opened/click_event/show_ui/show/append \
with \
storage windwaves_sea:chest_gui \
temp.opened.tick.temp

execute if data storage windwaves_sea:chest_gui \
temp.opened.tick.temp.slot_id_list.[1] \
run \
function chest_gui:run/opened/click_event/show_ui/show/recursion \
with storage windwaves_sea:chest_gui \
temp.opened.tick.temp

function chest_gui:run/opened/click_event/show_ui/show/run/main with \
storage windwaves_sea:chest_gui temp.opened.tick.temp

data remove storage windwaves_sea:chest_gui temp.opened.tick.temp

$execute as @a[limit=1,nbt={UUID:$(player_uuid)}] at @s run \
clear @s $(item_id)[minecraft:custom_data={tag:["chest_gui"]}]

tag @s remove reset