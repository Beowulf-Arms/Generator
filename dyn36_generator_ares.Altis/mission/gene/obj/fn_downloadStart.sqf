params ["_laptop"];


while {bso_gene_laptopStatus < 100} do {
	bso_gene_laptopStatus = (bso_gene_laptopStatus + 1);
	publicVariable "bso_gene_laptopStatus";
	sleep 1;// shoudl take around 15 mins
};