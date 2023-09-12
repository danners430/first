# Mark the player as being first
scoreboard players set @s first_marker 1

# Increment the number of times the player has been first
scoreboard players add @s first_number 1

# Tellraw result
execute as @a run tellraw @s ["",{"selector":"@a[scores={first_marker=1},limit=1]"}," was first! They have been first ",{"score":{"name":"@a[scores={first_marker=1},limit=1]","objective":"first_number"}}," times!"]