scoreboard objectives add death dummy
scoreboard objectives add death1 dummy
gamerule commandblockoutput false
gamerule sendcommandfeedback false

scoreboard players add @a death 1
scoreboard players set @e[type=player] death 0
scoreboard players set @a[scores={death=1}] death1 1

execute as @a[scores={death1=1}] at @s run tp ~~~ 0 0
scoreboard players set @a[scores={death1=1}] death1 0

execute as @a at @s unless entity @a[ry=0,rx=0] run kill @s