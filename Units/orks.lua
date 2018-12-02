
local OrkSmall = Humanoid:New {
	-- General
	name                = "OrkSmall",
	movementClass       = "Defender",
	objectName          = "OrkSmall.dae",
	script              = "ork.lua",
	maxDamage           = 500,
	-- mass                = 50, -- does this even matter?
	footprintX          = 2,
	footprintZ          = 2,
	
	maxVelocity         = 4,
	acceleration        = 2,
	brakeRate           = 2,
	turnRate            = 1600 / 0.16,
	
	selectionVolumeOffsets = [[0 0 0]],
	selectionVolumeScales  = [[50 50 50]],
	selectionVolumeType    = [[ellipsoid]],

	customParams = {
		ork = true,
		hscale = 0.75,
		vscale = 0.75,
	},

	weapons = {
		{
			name = "Bite",
		}
	},
}

local OrkBig = Humanoid:New {
	-- General
	name                = "OrkBig",
	movementClass       = "Defender",
	objectName 			= "OrkBig.dae",
	script              = "ork.lua",
	maxDamage           = 1000,
	-- mass                = 50, -- does this even matter?

	maxVelocity         = 4,

	footprintX          = 2,
	footprintZ          = 2,

	collisionVolumeType      = 'CylY',
	collisionVolumeScales    = '149 119 149',

	customParams = {
		ork = true,
	},

	weapons = {
		{
			name = "BigOrkAxe",
		}
	},
}

local OrkBoss = Humanoid:New {
	-- General
	name                = "OrkBoss",
	movementClass       = "Defender",
	objectName 			= "OrkBoss.dae",
	script              = "ork.lua",
	maxDamage           = 1600,
	-- mass                = 50, -- does this even matter?

	maxVelocity         = 5.1,

	footprintX          = 2,
	footprintZ          = 2,

	collisionVolumeType      = 'CylY',
	collisionVolumeScales    = '320 235 320',

	customParams = {
		ork = true,
	},

	weapons = {
		{
			name = "BossOrkAxe",
		}
	},
}


return {
	OrkSmall    = OrkSmall,
	OrkBig		= OrkBig,
	OrkBoss		= OrkBoss
}
