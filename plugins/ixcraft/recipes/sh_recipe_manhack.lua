
RECIPE.name = "Manhack"
RECIPE.description = "recipeManhackDesc"
RECIPE.category = "Assembly"
RECIPE.model = "models/manhack.mdl"
RECIPE.requirements = {
	["manhack_gib01"] = 1,
	["manhack_gib02"] = 1,
	["manhack_gib03"] = 1,
	["manhack_gib04"] = 1,
	["manhack_gib05"] = 2,
}
RECIPE.results = {
	["manhack"] = 1
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, L("noWorkbench")
end)
