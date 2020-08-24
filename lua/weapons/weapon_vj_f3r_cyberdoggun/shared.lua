if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.WorldModel					= "models/fallout/weapons/w_cyberdoggun.mdl"
SWEP.PrintName					= "Cyber-Dog Gun"
-- SWEP.ID 						= ITEM_VJ_GATLINGLASER
SWEP.AnimationType 				= "2hh"
SWEP.NPC_NextPrimaryFire 		= false -- Next time it can use primary fire
SWEP.NPC_CustomSpread	 		= 0.5
SWEP.NPC_TimeUntilFire	 		= 0 -- How much time until the bullet/projectile is fired?
SWEP.NPC_TimeUntilFireExtraTimers = {0.08} -- Extra timers, which will make the gun fire again! | The seconds are counted after the self.NPC_TimeUntilFire!
SWEP.Primary.Damage				= 6 -- Damage
SWEP.Primary.ClipSize			= 50 -- Max amount of bullets per clip
SWEP.NPC_EquipSound 			= "vj_fallout/weapons/cyberdoggun/k9000equip01.mp3"
SWEP.NPC_UnequipSound 			= "vj_fallout/weapons/cyberdoggun/k9000unequip02.mp3"
SWEP.NPC_ReloadSound 			= {"vj_fallout/weapons/cyberdoggun/k9000combatstart03.mp3"}
SWEP.Primary.Sound				= {}
SWEP.PrimaryEffects_MuzzleAttachment = "muzzle"
---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Base 						= "weapon_vj_base"
SWEP.Author 					= "Cpt. Hazama"
SWEP.Contact					= "http://steamcommunity.com/groups/vrejgaming"
SWEP.Purpose					= "This weapon is made for Players and NPCs"
SWEP.Instructions				= "Controls are like a regular weapon."
SWEP.Category					= "VJ Base - Fallout: Remastered"
	-- Main Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.MadeForNPCsOnly 			= true -- Is tihs weapon meant to be for NPCs only?
	-- Primary Fire ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Primary.Force				= 1 -- Force applied on the object the bullet hits
SWEP.Primary.Ammo				= "Pistol" -- Ammo type
SWEP.PrimaryEffects_SpawnShells = false
SWEP.HoldType 					= "2hh"
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:CustomOnInitialize()
	self.CurrentFireSound = CreateSound(self,"vj_fallout/weapons/minigun/wpn_minigun_fire_loop-old1.wav")
	self.CurrentFireSound:SetSoundLevel(95)
	self.StartSound = CreateSound(self,"vj_fallout/weapons/minigun/wpn_minigun_spinup.wav")
	self.StartSound:SetSoundLevel(80)
	self.StopingSound = CreateSound(self,"vj_fallout/weapons/minigun/wpn_minigun_spindown.wav")
	self.StopingSound:SetSoundLevel(80)
	self.HasSpunUp = false
	self.ChangingSpin = false
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:SpinUp()
	if !self.ChangingSpin && !self.StopingSound:IsPlaying() then
		self.ChangingSpin = true
		self.StartSound:Play()
		timer.Simple(SoundDuration("vj_fallout/weapons/minigun/wpn_minigun_spinup.wav"),function()
			if IsValid(self) then
				self.HasSpunUp = true
				self.ChangingSpin = false
				self.StartSound:Stop()
			end
		end)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:CustomOnNPC_ServerThink()
	self.NPC_NextPrimaryFire = self.HasSpunUp && 0.16 or false
	if IsValid(self.Owner:GetEnemy()) then
		if self.Owner.DoingWeaponAttack then
			if !self.HasSpunUp then
				self:SpinUp()
				return
			end
			self:PlayFireLoop()
		else
			self:StopFireLoop()
		end
	else
		self:StopFireLoop()
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:PlayFireLoop()
	if !self.CurrentFireSound:IsPlaying() then
		self.CurrentFireSound:Play()
		if self.StopingSound != nil && self.StopingSound:IsPlaying() then
			self.StopingSound:Stop()
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:StopFireLoop()
	if self.CurrentFireSound != nil && self.CurrentFireSound:IsPlaying() then
		self.CurrentFireSound:Stop()
		self.StopingSound:Play()
		self.HasSpunUp = false
		timer.Simple(SoundDuration("vj_fallout/weapons/minigun/wpn_minigun_spindown.wav"),function()
			if IsValid(self) then
				self.HasSpunUp = false
				self.StopingSound:Stop()
			end
		end)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function SWEP:OnRemove()
	self:StopParticles()
	self.Deleted = true
	self:StopFireLoop()
	if self.StartSound then self.StartSound:Stop() end
end