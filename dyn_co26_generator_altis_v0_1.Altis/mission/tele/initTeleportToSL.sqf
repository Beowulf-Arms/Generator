sleep 5;
movetoSL = player addAction ["Teleport To SL", "mission\tele\TeleportToSL.sqf"];
sleep 10;
hintSilent "Use your scroll wheel to teleport to your squad leader";
sleep 180;//3min
player removeAction movetoSL;