-- Comments on the right are my grievances with the format

local Spear = Weapon:New {
    -- general
    weaponType            = "Cannon", -- there's a default, but honestly, why?
    name                  = "Spear",
    impactOnly            = true,
    noSelfDamage          = true,
    range                 = 1000,     -- bad defaults (only 10.0)
    weaponVelocity        = 1000,     -- default velocity is 0, wtf?
    reloadTime            = 3.0,
    tolerance             = 6000,

    -- collision & avoidance
    avoidFriendly         = false,
    avoidFeature          = false,

    collideFriendly       = false,
    collideFeature        = false,

    -- targeting & accuracy
    accuracy              = 0.1,
    -- model                 = 'spear.dae',

    soundStart            = [[SpearThrow]],
    soundHit              = [[Hit]],

    damage                = {
        default = 100,
    }
}

local DefenderSword = Weapon:New {
    -- general
    weaponType            = "Melee", -- there's a default, but honestly, why?
    name                  = "Axe",
    impactOnly            = true,
    noSelfDamage          = true,
    range                 = 100,
    weaponVelocity        = 1000,
    reloadTime            = 1.0,
    tolerance             = 6000,

    -- collision & avoidance
    avoidFriendly         = true,
    avoidFeature          = true,

    collideFriendly       = false,
    collideFeature        = false,

    -- targeting & accuracy
    accuracy              = 0.9,
    -- model                 = 'spear.dae',

    soundStart            = [[SpearThrow]],
    soundHit              = [[Hit]],

    damage                = {
        default = 100,
    }
}

return {
	DefenderSword = DefenderSword
}
