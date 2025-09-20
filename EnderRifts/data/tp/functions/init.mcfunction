
scoreboard players set EnderRifts motdInstalled 1

## ALL SCOREBOARDS

scoreboard objectives add tpbell minecraft.custom:minecraft.bell_ring
scoreboard objectives add tpchecked dummy
scoreboard objectives add tpdestination dummy
scoreboard objectives add tpidcompare dummy
scoreboard objectives add tptagCheck dummy
scoreboard objectives add tpteleported dummy
scoreboard objectives add tpFuel dummy
scoreboard objectives add tpFuelCrafted minecraft.crafted:minecraft.barrier
scoreboard objectives add tpids dummy
execute unless score currentID tpids matches 1.. run scoreboard players add currentID tpids 1
scoreboard objectives add tpportalframe minecraft.crafted:minecraft.end_portal_frame
scoreboard objectives add tpTick dummy
scoreboard objectives add tpUpgraded dummy
scoreboard objectives add tpVar dummy
scoreboard objectives add tpNameVisible dummy
scoreboard objectives add tpNotification minecraft.custom:minecraft.leave_game