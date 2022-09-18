/////bmf-v2_2////

// Use the template below to activate respawns
// See wiki for further references and examples https://beowulfso.com/wiki/BSO_Respawn_System


class BSORespawns
{
    class west // valid sides are west, east, guer, civ. Unused ones can be skipped
    {
        sideTickets = 9999; // tickets for this side. default 0.
        //onTicketsDepleted = "mission\respawnTicketsDepleted.sqf";

        class MHQ // Some vehicle spawn point. This is the name it will be referenced by; it needs to be unique across all sides
        {
            name = "Mobile HQ"; // displayed name
            object = "b_mhq"; // variable name of a vehicle. Spawn point will become unavailable if vehicle is destroyed
        };
        class Base // Some marker spawn point
        {
            name = "Base";
            marker = "b_base"; // some map marker
        };
    };
};

