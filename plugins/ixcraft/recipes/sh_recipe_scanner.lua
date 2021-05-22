
RECIPE.name = "Combine Scanner"
RECIPE.description = "recipeScannerDesc"
RECIPE.category = "Assembly"
RECIPE.model = "models/Combine_Scanner.mdl"
RECIPE.requirements = {
	["scanner_gib01"] = 1,
	["scanner_gib02"] = 1,
	["scanner_gib04"] = 1,
	["scanner_gib05"] = 1,
}
RECIPE.results = {
	["scanner"] = 1
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, L("noWorkbench")
end)
