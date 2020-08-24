/*--------------------------------------------------
	=============== Autorun File ===============
	*** Copyright (c) 2012-2019 by Cpt. Hazama, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
------------------ Addon Information ------------------
local PublicAddonName = "Fallout SNPCs Remastered"
local AddonName = "Fallout Remastered"
local AddonType = "SNPC"
local AutorunFile = "autorun/vj_f3r_autorun.lua"
-------------------------------------------------------

local VJExists = file.Exists("lua/autorun/vj_base_autorun.lua","GAME")
if VJExists == true then
	include('autorun/vj_controls.lua')

	local vCre = "Fallout - Creatures"
	VJ.AddCategoryInfo(vCre, {Icon = "vj_icons/f3r_creatures16.png"})
	local vHum = "Fallout - Humans"
	VJ.AddCategoryInfo(vHum, {Icon = "vj_icons/f3r_humans16.png"})
	local vRob = "Fallout - Robots"
	VJ.AddCategoryInfo(vRob, {Icon = "vj_icons/f3r_robots16.png"})
	local vFEV = "Fallout - Super Mutants"
	VJ.AddCategoryInfo(vFEV, {Icon = "vj_icons/f3r_mutants16.png"})

		-- Creatures --
			-- Animals --
		VJ.AddNPC("Bighorner","npc_vj_f3r_bighorner",vCre)
		VJ.AddNPC("Brahmin","npc_vj_f3r_brahmin",vCre)
		VJ.AddNPC("Brahmin Pack","npc_vj_f3r_brahminpack",vCre)
		VJ.AddNPC("Brahmin Water","npc_vj_f3r_brahminwater",vCre)
		VJ.AddNPC("Coyote","npc_vj_f3r_coyote",vCre)
		VJ.AddNPC("Dogskin","npc_vj_f3r_dog",vCre)
		VJ.AddNPC("Vicious Dog","npc_vj_f3r_dog_vic",vCre)
		VJ.AddNPC("Yaoguai","npc_vj_f3r_yaoguai",vCre)
		VJ.AddNPC("Giant Rat","npc_vj_f3r_rat",vCre)
		VJ.AddNPC("Molerat","npc_vj_f3r_molerat",vCre)
		VJ.AddNPC("Mongrel","npc_vj_f3r_mongrel",vCre)
		VJ.AddNPC("Nightstalker","npc_vj_f3r_nightstalker",vCre)

			-- Bugs --
		VJ.AddNPC("Bloat Fly","npc_vj_f3r_bloatfly",vCre)
		VJ.AddNPC("Corpse Fly","npc_vj_f3r_corpsefly",vCre)
		VJ.AddNPC("Giant Ant","npc_vj_f3r_ant",vCre)
		VJ.AddNPC("Giant Fire Ant","npc_vj_f3r_antfire",vCre)
		VJ.AddNPC("Giant Ant Queen","npc_vj_f3r_antqueen",vCre)
		VJ.AddNPC("Giant Fire Ant Queen","npc_vj_f3r_antfirequeen",vCre)
		VJ.AddNPC("Mantis","npc_vj_f3r_mantis",vCre)
		VJ.AddNPC("Mantis Nymph","npc_vj_f3r_mantisnymph",vCre)
		VJ.AddNPC("Cazadore","npc_vj_f3r_cazadore",vCre)
		VJ.AddNPC("Radroach","npc_vj_f3r_radroach",vCre)
		VJ.AddNPC("Glowroach","npc_vj_f3r_radroachglow",vCre)
		VJ.AddNPC("Nukaroach","npc_vj_f3r_radroachnuka",vCre)

			-- Deathclaws --
		VJ.AddNPC("Deathclaw","npc_vj_f3r_deathclaw",vCre)
		VJ.AddNPC("Deathclaw (Enclave)","npc_vj_f3r_deathclaw_e",vCre)
		VJ.AddNPC("Deathclaw Alphamale","npc_vj_f3r_deathclawalpha",vCre)
		VJ.AddNPC("Deathclaw Alphamale (Enclave)","npc_vj_f3r_deathclawalpha_e",vCre)
		VJ.AddNPC("Deathclaw Baby","npc_vj_f3r_deathclawbaby",vCre)
		VJ.AddNPC("Deathclaw Baby (Enclave)","npc_vj_f3r_deathclawbaby_e",vCre)
		VJ.AddNPC("Deathclaw Mother","npc_vj_f3r_deathclawmom",vCre)
		VJ.AddNPC("Deathclaw Mother (Enclave)","npc_vj_f3r_deathclawmom_e",vCre)

			-- Feral Ghouls --
		VJ.AddNPC("Feral Ghoul (Armored)","npc_vj_f3r_ghoul_armor",vCre)
		VJ.AddNPC("Feral Ghoul (Swamp)","npc_vj_f3r_ghoul_swamp",vCre)
		VJ.AddNPC("Feral Ghoul","npc_vj_f3r_ghoul",vCre)
		VJ.AddNPC("Feral Ghoul (RobCo)","npc_vj_f3r_ghoul_vault",vCre)
		VJ.AddNPC("Feral Ghoul (Mutated)","npc_vj_f3r_ghoul_mutant",vCre)
		VJ.AddNPC("Feral Ghoul (Ravager)","npc_vj_f3r_ghoul_ravager",vCre)
		VJ.AddNPC("Feral Ghoul (NCR)","npc_vj_f3r_ghoul_ncr",vCre)
		VJ.AddNPC("Feral Ghoul (Vault Security)","npc_vj_f3r_ghoul_vaultsec",vCre)
		VJ.AddNPC("Feral Ghoul (Reaver)","npc_vj_f3r_ghoul_reaver",vCre)
		VJ.AddNPC("Glowing One","npc_vj_f3r_ghoul_glow",vCre)
		VJ.AddNPC("Glowing One (NCR)","npc_vj_f3r_ghoul_glowncr",vCre)
		VJ.AddNPC("Glowing One (Vault)","npc_vj_f3r_ghoul_glowvau",vCre)
		VJ.AddNPC("Glowing One (Vault Secuirty)","npc_vj_f3r_ghoul_glowsec",vCre)

			-- Geckos --
		VJ.AddNPC("Gecko","npc_vj_f3r_gecko",vCre)
		VJ.AddNPC("Gecko (Golden)","npc_vj_f3r_geckogold",vCre)
		VJ.AddNPC("Gecko (Fire)","npc_vj_f3r_geckofire",vCre)
		VJ.AddNPC("Gecko (Green)","npc_vj_f3r_geckogreen",vCre)
		VJ.AddNPC("Gojira","npc_vj_f3r_geckobig",vCre)

			-- Mirelurks --
		VJ.AddNPC("Magmalurk","npc_vj_f3r_magmalurk",vCre)
		VJ.AddNPC("Mirelurk","npc_vj_f3r_mirelurk",vCre)
		VJ.AddNPC("Mirelurk Hunter","npc_vj_f3r_mirelurkhunter",vCre)
		VJ.AddNPC("Nukalurk","npc_vj_f3r_mirelurknuka",vCre)
		VJ.AddNPC("Swamplurk","npc_vj_f3r_mirelurkswamp",vCre)
		VJ.AddNPC("Swamplurk Hunter","npc_vj_f3r_swamplurkhunt",vCre)
		VJ.AddNPC("Mirelurk King","npc_vj_f3r_mirelurkking",vCre)
		VJ.AddNPC("Swampurk Queen","npc_vj_f3r_mirelurkswampque",vCre)
		VJ.AddNPC("Lakelurk","npc_vj_f3r_lakelurk",vCre)
		VJ.AddNPC("Lakelurk King","npc_vj_f3r_lakelurkking",vCre)
		VJ.AddNPC("Lakelurk Alpha Male","npc_vj_f3r_lakelurkalpha",vCre)

			-- Radscorpions --
		VJ.AddNPC("Albino Radscorpion","npc_vj_f3r_radscor_albino",vCre)
		VJ.AddNPC("Barkscorpion","npc_vj_f3r_radscor_bark",vCre)
		VJ.AddNPC("Giant Radscorpion","npc_vj_f3r_radscor",vCre)
		VJ.AddNPC("Giant Nukascorpion","npc_vj_f3r_radscor_nuka",vCre)
		VJ.AddNPC("Giant Glowscorpion","npc_vj_f3r_radscor_glow",vCre)
		VJ.AddNPC("Radscorpion","npc_vj_f3r_radscor_small",vCre)
	
			-- Misc. --
		VJ.AddNPC("Spore Carrier","npc_vj_f3r_sporecarrier",vCre)
		VJ.AddNPC("Spore Plant","npc_vj_f3r_sporeplant",vCre)
		VJ.AddNPC("Street Trog","npc_vj_f3r_trog",vCre)
		VJ.AddNPC("Tunneler","npc_vj_f3r_tunneler",vCre)
		VJ.AddNPC("Tunneler Queen","npc_vj_f3r_tunnelerqueen",vCre)

		-- Robots --
	VJ.AddNPC("Zeta Support Drone","npc_vj_f3r_drone",vRob)
	VJ.AddNPC("Eye Bot","npc_vj_f3r_eyebot",vRob)
	VJ.AddNPC("Ede","npc_vj_f3r_eyebot_ede",vRob)
	VJ.AddNPC("Protectron","npc_vj_f3r_protectron",vRob)
	VJ.AddNPC("Protectron (Army)","npc_vj_f3r_protectron_army",vRob)
	VJ.AddNPC("Protectron (Enclave)","npc_vj_f3r_protectron_enc",vRob)
	VJ.AddNPC("Protectron (Metro)","npc_vj_f3r_protectron_metro",vRob)
	VJ.AddNPC("Protectron (Outcast)","npc_vj_f3r_protectron_outc",vRob)
	VJ.AddNPC("Protectron (Factory)","npc_vj_f3r_protectron_fact",vRob)
	VJ.AddNPC("Army Gutsy","npc_vj_f3r_gutsyarmy",vRob)
	VJ.AddNPC("Brother Hood Gutsy","npc_vj_f3r_gutsybos",vRob)
	VJ.AddNPC("Brother Hood Gutsy (Winter)","npc_vj_f3r_gutsybosw",vRob)
	VJ.AddNPC("Enclave Gutsy","npc_vj_f3r_gutsyenclave",vRob)
	VJ.AddNPC("Outcast Gutsy","npc_vj_f3r_gutsyoutcast",vRob)
	VJ.AddNPC("Andy","npc_vj_f3r_handyandy",vRob)
	VJ.AddNPC("Mister Handy","npc_vj_f3r_handy",vRob)
	VJ.AddNPC("Nuka Handy","npc_vj_f3r_handynuka",vRob)
	VJ.AddNPC("Sentrybot (Army)","npc_vj_f3r_sentrybot_army",vRob)
	VJ.AddNPC("Sentrybot (Enclave)","npc_vj_f3r_sentrybot_enc",vRob)
	VJ.AddNPC("Sentrybot (Outcast)","npc_vj_f3r_sentrybot_out",vRob)
	VJ.AddNPC("Sentrybot (Brother Hood)","npc_vj_f3r_sentrybot",vRob)
	VJ.AddNPC("Sentrybot (Brother Hood Winter)","npc_vj_f3r_sentrybot_bosw",vRob)
	VJ.AddNPC("Sentry Turret (Brother Hood)","npc_vj_f3r_sentryturret",vRob)
	-- VJ.AddNPC("Sentry Turret (Raiders)","npc_vj_f3r_sentryturret_flame",vRob)
	VJ.AddNPC("Sentry Turret (Enclave)","npc_vj_f3r_sentryturret_plasma",vRob)
	VJ.AddNPC("Chinese Spider Mine","npc_vj_f3r_spidermine",vRob)

		-- FEV Mutants --
	VJ.AddNPC_HUMAN("Super Mutant","npc_vj_f3r_supermutant",{
		"weapon_vj_f3r_assaultrifle",
		"weapon_vj_f3r_huntingrifle",
	},vFEV)
	VJ.AddNPC_HUMAN("Super Mutant (Light)","npc_vj_f3r_supermutant_lig",{
		"weapon_vj_f3r_assaultrifle",
		"weapon_vj_f3r_huntingrifle",
		"weapon_vj_f3r_combatshotgun",
	},vFEV)
	VJ.AddNPC_HUMAN("Super Mutant (Medium)","npc_vj_f3r_supermutant_med",{
		"weapon_vj_f3r_assaultrifle",
		"weapon_vj_f3r_huntingrifle",
		"weapon_vj_f3r_combatshotgun",
	},vFEV)
	VJ.AddNPC_HUMAN("Super Mutant (Heavy)","npc_vj_f3r_supermutant_hea",{
		"weapon_vj_f3r_gatlinglaser",
		"weapon_vj_f3r_fatman",
	},vFEV)
	VJ.AddNPC_HUMAN("Super Mutant (Nightkin)","npc_vj_f3r_supermutant_nig",{
		"weapon_vj_f3r_assaultrifle",
		"weapon_vj_f3r_combatshotgun",
		"weapon_vj_f3r_huntingrifle",
	},vFEV)
	VJ.AddNPC("Super Mutant Behemoth","npc_vj_f3r_behemoth",vFEV)
	VJ.AddNPC("Centaur","npc_vj_f3r_centaur",vFEV)
	VJ.AddNPC("Evolved Centaur","npc_vj_f3r_centaurbig",vFEV)
	VJ.AddNPC("The Thing","npc_vj_f3r_centaurthing",vFEV)
	VJ.AddNPC("FEV Subject","npc_vj_f3r_fev",vFEV)

		-- Humans --
	VJ.AddNPC_HUMAN("_Human Base","npc_vj_f3r_human_base",{
		"weapon_vj_f3r_assaultrifle",
		"weapon_vj_f3r_combatshotgun",
		"weapon_vj_f3r_10mmpistol",
		"weapon_vj_f3r_huntingrifle",
	},vHum)
	VJ.AddNPC_HUMAN("Enclave Soldier (NV)","npc_vj_f3r_enclave_nv",{"weapon_vj_f3r_plasmapistol","weapon_vj_f3r_plasmarifle"},vHum)
	VJ.AddNPC_HUMAN("Enclave Soldier","npc_vj_f3r_enclave",{"weapon_vj_f3r_plasmapistol","weapon_vj_f3r_plasmarifle"},vHum)
	VJ.AddNPC_HUMAN("Enclave Tesla Soldier","npc_vj_f3r_enclave_tesla",{"weapon_vj_f3r_plasmarifle"},vHum)
	VJ.AddNPC_HUMAN("Brother Hood Initiate","npc_vj_f3r_bos",{},vHum)
	VJ.AddNPC_HUMAN("Wastelander (Casual)","npc_vj_f3r_waste_casu",{},vHum)
	VJ.AddNPC_HUMAN("Wastelander (Combat Armor)","npc_vj_f3r_waste_comb",{},vHum)
	VJ.AddNPC_HUMAN("NCR Ranger","npc_vj_f3r_ncr",{},vHum)
	VJ.AddNPC_HUMAN("Wastelander (Formal)","npc_vj_f3r_waste_form",{},vHum)
	VJ.AddNPC_HUMAN("Child of Atom","npc_vj_f3r_coa",{},vHum)
	VJ.AddNPC_HUMAN("Gary","npc_vj_f3r_garry",{
		"weapon_vj_f3r_assaultrifle",
		"weapon_vj_f3r_combatshotgun",
		"weapon_vj_f3r_10mmpistol",
		"weapon_vj_f3r_huntingrifle",
	},vHum)
	VJ.AddNPC_HUMAN("Wastelander (Engineer)","npc_vj_f3r_waste_eng",{},vHum)
	VJ.AddNPC_HUMAN("Wastelander (Lab Coat)","npc_vj_f3r_waste_lab",{},vHum)
	VJ.AddNPC_HUMAN("Wastelander (Leather Armor)","npc_vj_f3r_waste_lea",{"weapon_vj_f3r_huntingrifle","weapon_vj_f3r_10mmpistol"},vHum)
	VJ.AddNPC_HUMAN("Talon Merc Company","npc_vj_f3r_talon",{},vHum) -- Mark 2 combat
	VJ.AddNPC_HUMAN("Raider (Metal Armor)","npc_vj_f3r_raider_met",{},vHum)
	VJ.AddNPC_HUMAN("Raider (Power Armor)","npc_vj_f3r_raider_pow",{},vHum)
	VJ.AddNPC_HUMAN("Wastelander (Radsuit)","npc_vj_f3r_waste_rad",{},vHum)
	VJ.AddNPC_HUMAN("Raider","npc_vj_f3r_raider",{
		"weapon_vj_f3r_assaultrifle",
		"weapon_vj_f3r_combatshotgun",
		"weapon_vj_f3r_10mmpistol",
		"weapon_vj_f3r_huntingrifle",
	},vHum)
	VJ.AddNPC_HUMAN("Y-17 Trauma Override Harness","npc_vj_f3r_skeleton",{},vHum)
	VJ.AddNPC_HUMAN("Chinese Stealth Suit MK.I","npc_vj_f3r_chinese1",{},vHum)
	VJ.AddNPC_HUMAN("Chinese Stealth Suit MK.II","npc_vj_f3r_chinese2",{},vHum)
	VJ.AddNPC_HUMAN("Brother Hood T-45","npc_vj_f3r_bosarmor",{},vHum)
	VJ.AddNPC_HUMAN("Wastelander (Tuxedo)","npc_vj_f3r_waste_tux",{},vHum)
	VJ.AddNPC_HUMAN("Vault Security","npc_vj_f3r_vault",{},vHum)
	VJ.AddNPC_HUMAN("Vault Dweller","npc_vj_f3r_vaultsec",{},vHum)
	VJ.AddNPC_HUMAN("Wastelander","npc_vj_f3r_waste",{},vHum)
	VJ.AddNPC_HUMAN("Wastelander (Merchant)","npc_vj_f3r_waste_merch",{},vHum)

	VJ.AddParticle("particles/alienblaster.pcf",{
		"alienblaster_projectile",
	})
	VJ.AddParticle("particles/centaur_spit.pcf",{
		"centaur_spit",
	})
	VJ.AddParticle("particles/magmalurk_flame.pcf",{
		"magmalurk_flame",
	})
	VJ.AddParticle("particles/flamer.pcf",{
		"flamer",
	})
	VJ.AddParticle("particles/glowingone.pcf",{})
	VJ.AddParticle("particles/flame_gargantua.pcf",{})
	VJ.AddParticle("particles/flame_gojira.pcf",{})
	VJ.AddParticle("particles/flamer.pcf",{})
	VJ.AddParticle("particles/incinerator.pcf",{})
	VJ.AddParticle("particles/goregrenade.pcf",{})
	VJ.AddParticle("particles/radiation_shockwave.pcf",{})
	VJ.AddParticle("particles/sporecarrier_glow.pcf",{})
	VJ.AddParticle("particles/sporecarrier_radiation.pcf",{})
	VJ.AddParticle("particles/plasmapistol.pcf",{})
	VJ.AddParticle("particles/fo3_fx.pcf",{})
	VJ.AddParticle("particles/vman_explosion.pcf",{})
	VJ.AddParticle("particles/rpg_firetrail.pcf",{})
	
-- !!!!!! DON'T TOUCH ANYTHING BELOW THIS !!!!!! -------------------------------------------------------------------------------------------------------------------------
	AddCSLuaFile(AutorunFile)
	VJ.AddAddonProperty(AddonName,AddonType)
else
	if (CLIENT) then
		chat.AddText(Color(0,200,200),PublicAddonName,
		Color(0,255,0)," was unable to install, you are missing ",
		Color(255,100,0),"VJ Base!")
	end
	timer.Simple(1,function()
		if not VJF then
			if (CLIENT) then
				VJF = vgui.Create("DFrame")
				VJF:SetTitle("ERROR!")
				VJF:SetSize(790,560)
				VJF:SetPos((ScrW()-VJF:GetWide())/2,(ScrH()-VJF:GetTall())/2)
				VJF:MakePopup()
				VJF.Paint = function()
					draw.RoundedBox(8,0,0,VJF:GetWide(),VJF:GetTall(),Color(200,0,0,150))
				end

				local VJURL = vgui.Create("DHTML",VJF)
				VJURL:SetPos(VJF:GetWide()*0.005, VJF:GetTall()*0.03)
				VJURL:Dock(FILL)
				VJURL:SetAllowLua(true)
				VJURL:OpenURL("https://sites.google.com/site/vrejgaming/vjbasemissing")
			elseif (SERVER) then
				timer.Create("VJBASEMissing",5,0,function() print("VJ Base is Missing! Download it from the workshop!") end)
			end
		end
	end)
end
