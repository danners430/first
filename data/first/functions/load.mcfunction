# Reload the marker each time the server starts - only one person, the first person, can have the score.
scoreboard objectives remove first_marker
scoreboard objectives add first_marker dummy

# Counts the number of people in first_marker
scoreboard objectives add first_counter dummy

# Counts how often the player has been first
scoreboard objectives add first_number dummy

# Trigger objective for AFK functionality
scoreboard objectives add first_afk trigger