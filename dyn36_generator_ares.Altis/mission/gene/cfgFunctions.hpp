class gene
{
	class main
	{
		file = "mission\gene";
		class gene_setup {};
		class gene_admin {};
		class gene_mb {};
        class mission_clear {};
        class mission_cache {};
        class mission_elimHVT {};
		
	};
	
	class loadouts
	{
		file = "mission\Loadouts";
		class ammoBox {};
		class armoury {};
	};

	class vehcSpawn
	{
		file = "mission\gene\vehcSpawn";
		class spawnVehc {};
		class ListVehcs {};
		class vehcSpawnActions {};
	};

	class tele
	{
		file = "mission\gene\tele";
		class tele {};
	};

	class ai
	{
		file = "mission\gene\ai";
		class setupDefence {};

		class spawnGroup {};
		class spawnMechGroup {};
		class spawnAtkVehc {};

        class spawnPatrol {};
        class spawnMechPatrol {};
        class spawnAtkVPatrol {};

        class spawnAtk {};
        class spawnMechAtk {};
        class spawnAtkVAtk {};
		
        class spawnGarrison {};
        class spawnCamp {};
		class spawnMechGuard {};
		class spawnAtkVGuard {};
		class spawnStaticWpn {};
		
	};

	class obj
	{
		file = "mission\gene\obj";
		class cache_gen {};
		class spawnTrench {};
        class gene_markers {};
        class gene_qrf {};
        class gene_qrfMech {};
        class gene_qrf_helo {};
		class hvt_gen {};
		class timeAcc {};
	};
};
