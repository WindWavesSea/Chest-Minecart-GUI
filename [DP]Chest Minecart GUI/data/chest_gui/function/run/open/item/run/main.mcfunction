$data merge entity @s \
{\
Items:$(item) \
\
}
data modify entity @s CustomName set value [{text:""}]
data remove storage windwaves_sea:chest_gui temp.open.item

tag @s add ready