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
	};

	class ai
	{
		file = "mission\gene\ai";
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
	};

	class obj
	{
		file = "mission\gene\obj";
		class cache_gen {};
        class gene_markers {};
        class gene_qrf {};
        class gene_qrfMech {};
        class gene_qrf_helo {};
	};
};
