local WrapUtility = {}

WrapUtility.HInRadius = function (vec, radius, teamNum, teamType)
	local tbl = Heroes.InRadius(vec, radius, teamNum, teamType)
	if tbl ~= nil then
		return tbl
	else
		return {}
	end
end

WrapUtility.TInRadius = function (vec, radius, active)
	local  tbl = Trees.InRadius(vec, radius, active)
	if tbl ~= nil then
		return tbl
	else
		return {}
	end
end

WrapUtility.NInRadius = function (vec, radius, teamNum, teamType)
	local  tbl = NPCs.InRadius(vec, radius, teamNum, teamType)
	if tbl ~= nil then
		return tbl
	else
		return {}
	end
end



WrapUtility.HeroesInRadius = function (entity, radius, team)
	local tbl = Entity.GetHeroesInRadius(entity, radius, team)
	if tbl ~= nil then
			return tbl
	else
		return {}
	end
end

WrapUtility.UnitsInRadius = function (entity, radius, team)
	local tbl = Entity.GetUnitsInRadius(entity, radius, team)
	if tbl ~= nil then

			return tbl
	else
		return {}
	end
end

WrapUtility.TreesInRadius = function (radius, active)
	local tbl = Entity.GetTreesInRadius(radius, active)
	if tbl ~= nil then
		return tbl
	else
		return {}
	end
end

WrapUtility.EIsAlive = function (entity)

	if entity then
		return Entity.IsAlive(entity)
	else
		return false
	end
end

WrapUtility.EIsNPC = function (entity)
	if entity then
		return Entity.IsNPC(entity)
	else
		return false
	end
end


function WrapUtility.DrawTextCenteredX(p1, p2, p3, p4, p5)
	local wide, tall = Renderer.GetTextSize(p1, p4)
	return Renderer.DrawText(p1, p2 - wide/2, p3, p4)
end

function WrapUtility.DrawTextCenteredY(p1, p2, p3, p4, p5)
	local wide, tall = Renderer.GetTextSize(p1, p4)
	return Renderer.DrawText(p1, p2, p3 - tall/2, p4)
end

function WrapUtility.DrawTextCentered(p1, p2, p3, p4, p5)
	local wide, tall = Renderer.GetTextSize(p1, p4)
	return Renderer.DrawText(p1, p2 - wide/2 , p3 - tall/2, p4)
end


return WrapUtility