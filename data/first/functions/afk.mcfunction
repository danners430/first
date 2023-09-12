# Put players in AFK team
execute as @s[team=Owner] run team join Owner_AFK
execute as @s[team=Player] run team join Player_AFK
execute as @s[team=techsupport] run team join techsupport_AFK
execute as @s[team=Mods] run team join Mods_AFK
execute as @s[team=VIP] run team join VIP_AFK
scoreboard players set @s first_afk 3