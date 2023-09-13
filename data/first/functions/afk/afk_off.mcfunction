# Remove players from AFK team
execute as @s[team=Owner_AFK] run team join Owner
execute as @s[team=Player_AFK] run team join Player
execute as @s[team=techsupport_AFK] run team join techsupport
execute as @s[team=Mods_AFK] run team join Mods
execute as @s[team=VIP_AFK] run team join VIP
scoreboard players set @s first_afk 0