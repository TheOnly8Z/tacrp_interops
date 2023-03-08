
SWEP.Base = "tacrp_base"
SWEP.Spawnable = true
AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Desert Eagle .44"
SWEP.Category = "Tactical RP" // "Tactical RP (Extras)"

SWEP.SubCatTier = "2Premium"
SWEP.SubCatType = "1Sidearm"

SWEP.Description = "Large magnum pistol. Great capacity and handling for its caliber, but range is low."

SWEP.ViewModel = "models/weapons/tacint_extras/v_deagle.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_deagle.mdl"

SWEP.Slot = 1

SWEP.ArcadeStats = {
    MoveSpeedMult = 1,
    ShootingSpeedMult = 0.8,
    SightedSpeedMult = 0.85,
    MeleeSpeedMult = 1,
    ReloadSpeedMult = 1,
}

// "ballistics"

SWEP.Damage_Max = 55
SWEP.Damage_Min = 25
SWEP.Range_Min = 300
SWEP.Range_Max = 2000
SWEP.Penetration = 1 // units of metal this weapon can penetrate

SWEP.MuzzleVelocity = 10000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1.25,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.75
}

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 180

SWEP.Spread = 0.0075

SWEP.ShootTimeMult = 0.75

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 3
SWEP.RecoilResetTime = 0.3
SWEP.RecoilDissipationRate = 6
SWEP.RecoilFirstShotMult = 0.8 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 3

SWEP.RecoilKick = 12

SWEP.RecoilSpreadPenalty = 0.025

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.9
SWEP.ShootingSpeedMult = 0.4
SWEP.SightedSpeedMult = 0.5
SWEP.MeleeSpeedMult = 0.5
SWEP.ReloadSpeedMult = 0.75

SWEP.AimDownSightsTime = 0.32
SWEP.SprintToFireTime = 0.27

// hold types

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = "pistol"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -2, -5)

SWEP.SprintAng = Angle(0, 30, 0)
SWEP.SprintPos = Vector(2, 0, -12)

SWEP.SightAng = Angle(-0.05, -0.1, 0)
SWEP.SightPos = Vector(-3.3, 0, -4)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)

// reload
SWEP.ClipSize = 8
SWEP.Ammo = "357"
SWEP.ReloadTimeMult = 1.4
SWEP.DropMagazineModel = "models/weapons/tacint/magazines/gsr1911.mdl"
SWEP.DropMagazineImpact = "pistol"

// sounds
local path = "tacint_extras/degala/"
local path1 = "tacrp/weapons/gsr1911/"
SWEP.Sound_Shoot = path .. "deagle-1.wav"
SWEP.Vol_Shoot = 110
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects
// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 4
SWEP.MuzzleEffect = "muzzleflash_pistol"
// anims
// VM:
// idle
// fire
// fire1, fire2...
// dryfire
// melee
// reload
// midreload
// prime_grenade
// throw_grenade
// throw_grenade_underhand
// deploy
// blind_idle
// blind_fire
// blind_fire1, blind_fire2...
// blind_dryfire
// WM:
// attack1
SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["fire"] = {"shoot1", "shoot2", "shoot3"},
    ["blind_fire"] = {"blind_shoot1", "blind_shoot2", "blind_shoot3"},
    ["melee"] = {"melee1", "melee2"}
}
SWEP.LastShot = true
// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium"},
        Bone = "ValveBiped.GSR1911_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 1,
        WMScale = 1,
        Pos_VM = Vector(-3.8, 0, 5.55),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, -1, -0.85),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = {"barrel"},
        Bone = "ValveBiped.GSR1911_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        VMScale = 0.4,
        WMScale = 0.5,
        Pos_VM = Vector(-0.76, 0.7, 7.35),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 9.25, -1.5),
        Ang_WM = Angle(0, -90, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.GSR1911_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        VMScale = 1.1,
        WMScale = 1.3,
        Pos_VM = Vector(-1.7, 0, 7),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(0, 5, -3),
        Ang_WM = Angle(0, -90, 180),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_extmag_pistol2", "acc_holster", "acc_brace"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Trigger",
        Category = {"trigger_semi"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_pistol"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [8] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
}

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end
addsound("tacint_degala.clip_in", path .. "clip_in.wav")
addsound("tacint_degala.clip_in-mid", path1 .. "gsr1911_clip_in-mid.wav")
addsound("tacint_degala.clip_out", path .. "clip_out.wav")
addsound("tacint_degala.slide_action", path1 .. "gsr1911_slide_action.wav")
addsound("tacint_degala.slide_shut", path .. "slide_shut.wav")
addsound("tacint_degala.cock_hammer", path1 .. "gsr1911_cockhammer.wav")