$data modify storage windwaves_sea:chest_gui \
temp.opened.tick.temp.item prepend from \
storage windwaves_sea:chest_gui config.$(name).slot.$(slot_id).item
$data modify storage windwaves_sea:chest_gui \
temp.opened.tick.temp.item.[0] \
merge value \
{\
    Slot:$(slot_id)b\
}

data modify storage windwaves_sea:chest_gui \
temp.opened.tick.temp.item.[0].components.custom_data \
merge value \
{\
    tag:["chest_gui"]\
}
