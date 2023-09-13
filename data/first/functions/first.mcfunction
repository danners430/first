# Count the number of people who have a score of 1 in the first_marker scoreboard. If it's zero, then nobody has activated first yet. If it's one, then someone has been first already.
# execute store result score @s first_counter run execute if entity @a[scores={first_marker=1}]

# If the result is zero, then the player activating the function is first - send them to the grant function
# execute if score @s first_counter matches 0 run function first:grant

# If it's one or more, then the player isn't first - tell the player who's been first instead.
# execute unless score @s first_counter matches 0 run tellraw @s ["",{"selector":"@a[scores={first_marker=1},limit=1]"}," was first! They have been first ",{"score":{"name":"@a[scores={first_marker=1},limit=1]","objective":"first_number"}}," times!"]

###

# Re-written to use storage

# If storage exists, run tellraw
execute if data storage first:first claimed run function first:tell

# If storage doesn't exist, run grant
execute as @s[team=!CAM] unless data storage first:first claimed run function first:grant