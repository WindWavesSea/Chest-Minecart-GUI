$data modify storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)".item_id set from \
storage windwaves_sea:chest_gui config.$(name).slot.$(slot_id).item.id

$data modify storage windwaves_sea:chest_gui temp.opened.tick."$(player_uuid)".item_components set from \
storage windwaves_sea:chest_gui config.$(name).slot.$(slot_id).item.components
