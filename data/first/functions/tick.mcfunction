# Add players to scoreboard that aren't already in it
execute as @a run execute unless score @s first_afk matches 0.. run scoreboard players set @s first_afk 0

# If players have a score of 0, enable the trigger and set score to 1
execute as @a[scores={first_afk=0}] run scoreboard players enable @s first_afk
execute as @a[scores={first_afk=0}] run scoreboard players set @s first_afk 1

# As above, but if players have a score of 3 (set themselves as AFK)
execute as @a[scores={first_afk=3}] run scoreboard players enable @s first_afk
execute as @a[scores={first_afk=3}] run scoreboard players set @s first_afk 4

# If scoreboard is 2, the score has been triggered. Run AFK.
execute as @a[scores={first_afk=2}] run function first:afk

# If scoreboard is 5, the score has been triggered again. Run AFK_off.
execute as @a[scores={first_afk=5}] run function first:afk_off

# Score progression:
# 
# Start:
# 0 > enable score > set to 1
# 1 > ready for trigger
# trigger - set to 2
# 2 > enable AFK > set to 3
# 3 > enable score > set to 4
# trigger - set to 5
# 5 > disable AFK > set to 0
# End/restart