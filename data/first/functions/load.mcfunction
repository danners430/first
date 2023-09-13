# Reload the marker each time the server starts - only one person, the first person, can have the score.
# scoreboard objectives remove first_marker
# scoreboard objectives add first_marker dummy

# Remove storage to indicate First is unclaimed
data remove storage first:first claimed

# Remove marker
kill @e[type=minecraft:marker,tag=First]

# Counts the number of people in first_marker
scoreboard objectives add first_counter dummy

# Counts how often the player has been first
scoreboard objectives add first_number dummy








# Trigger objective for AFK functionality
scoreboard objectives add first_afk trigger