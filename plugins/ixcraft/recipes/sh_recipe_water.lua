
RECIPE.name = "Breen's Water"
RECIPE.description = "recipeWaterDesc"
RECIPE.category = "Assembly"
RECIPE.model = "models/props_junk/PopCan01a.mdl"
RECIPE.requirements = {
	["water_empty"] = 1,
	["water_drug"] = 1,
	["purified_water"] = 1,
}
RECIPE.results = {
	["water"] = 1
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, L("noWorkbench")
end)
