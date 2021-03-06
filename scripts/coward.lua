local Torso = piece("Torso")


function script.QueryWeapon()
	return Torso
end

function script.AimWeapon()
	return true
end

function script.StartBuilding(heading, pitch)
	SetUnitValue(COB.INBUILDSTANCE, 1)
end

local shared = include("shared.lua")
function script.Create()
	shared.Init(Torso, 3)
end

function script.StartMoving()
	shared.StartMoving()
end

function script.StopMoving()
	shared.StopMoving()
end

function script.BlockShot(num, targetID)
	if not targetID then
		return true
	end
	local tx, _, tz = Spring.GetUnitPosition(targetID)
	local ux, _, uz = Spring.GetUnitPosition(unitID)
	local dx, dz = tx - ux, tz - uz
	local cx = ux - dx
	local cz = uz - dz
	local cy = Spring.GetGroundHeight(cx, cz)
	
	Spring.GiveOrderToUnit(unitID, CMD.MOVE, {cx, cy, cz}, {})
	return false
end