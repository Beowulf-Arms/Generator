
params ["_medicLevel"];

//_medicLevel = 0; // nothing
//_medicLevel = 1; // medic
//_medicLevel = 2; // doctor

// if statement used so we don't try and overwrite normal medics level when it is set to 0
if !(_medicLevel == 0) then {
	player setVariable ["ace_medical_medicclass", _medicLevel, true];
};