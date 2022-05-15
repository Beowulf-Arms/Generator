/////bmf-v2_2////

// In this file, you can execute custom scripts

[] call gene_fnc_gene_setup;
[] call gene_fnc_gene_mb;
[] call gene_fnc_gene_admin;

if (isServer) then {
    // Put things that happen on the server here.
    // Examples: Fill ammo boxes, set up public variables



};


if (hasInterface) then {
    // Put player/client scripts here.
    // Note: player is guaranteed to exist here.
    // Examples: Create ace interactions
    //_isAdmin = serverCommandAvailable "#kick";
    //if (_isAdmin) then {execVM "mission\bso_gene_admin.sqf"};


};
