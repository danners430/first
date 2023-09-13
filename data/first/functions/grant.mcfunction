# Mark the player as being first
# scoreboard players set @s first_marker 1

# Increment the number of times the player has been first
scoreboard players add @s first_number 1

# Tellraw result
# execute as @a run tellraw @s ["",{"selector":"@a[scores={first_marker=1},limit=1]"}," was first! They have been first ",{"score":{"name":"@a[scores={first_marker=1},limit=1]","objective":"first_number"}}," times!"]

# Mark someone as having been first
data modify storage first:first claimed set value 1

# Clear team storage
data remove storage first:teams Owner
data remove storage first:teams Player
data remove storage first:teams Helper
data remove storage first:teams Mods
data remove storage first:teams VIP

# Generate appropriate player selector
execute as @s[team=Owner] run data modify storage first:teams Owner set value 1
execute as @s[team=Player] run data modify storage first:teams Player set value 1
execute as @s[team=techsupport] run data modify storage first:teams Helper set value 1
execute as @s[team=Mods] run data modify storage first:teams Mods set value 1
execute as @s[team=VIP] run data modify storage first:teams VIP set value 1
execute as @s[team=Owner_AFK] run data modify storage first:teams Owner set value 1
execute as @s[team=Player_AFK] run data modify storage first:teams Player set value 1
execute as @s[team=techsupport_AFK] run data modify storage first:teams Helper set value 1
execute as @s[team=Mods_AFK] run data modify storage first:teams Mods set value 1
execute as @s[team=VIP_AFK] run data modify storage first:teams VIP set value 1

# Loot player head
loot spawn 95 -53 -77 loot first:head

# Get player name from looted head
execute positioned 95 -53 -77 run data modify storage first:first Player set from entity @e[type=item,sort=nearest,limit=1] Item.tag.SkullOwner.Name

# Kill head entity
execute positioned 95 -53 -77 run kill @e[type=item,sort=nearest,limit=1]

# Store player score
execute store result storage first:first Score int 1 run scoreboard players get @s first_number

# Tell everyone
execute as @a run function first:tell