//_x = [_target] execVM "mission\bso_tele.sqf";
private ["_target"];

_target = _this select 0;

["GENERATOR: XXX", "Created by Walker", "Beowulf Strategic Operations", '"What could possibly go wrong?"\n\n-Beowulf proverb', 3] execVM "mission\missionIntro.sqf";
player setPos [(getPos _target select 0), (getPos _target select 1) -5];




	if (vehicle _target == _target) then
	{
	
	player setPos [(getPos _target select 0), (getPos _target select 1) -5];

	}

//If leader is inside vehicle, move player into vehicle cargo

	else

	{
	
	/*Checking if there is room in the vehicle, gives hint if there is none
	if there is room, player is moved into cargo of leader's vehicle
	*/
	
	if ((vehicle _target) emptyPositions "cargo"==0) then
	{hint "No room in group leader's vehicle."}
	else
	{
	player moveincargo vehicle _target;
	};
	};