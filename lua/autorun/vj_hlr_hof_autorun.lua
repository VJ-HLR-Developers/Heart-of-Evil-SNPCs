/*--------------------------------------------------
	=============== Autorun File ===============
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
------------------ Addon Information ------------------
local PublicAddonName = "Heart of Evil SNPCs"
local AddonName = "Heart of Evil"
local AddonType = "SNPC"
local AutorunFile = "autorun/vj_hlr_hof_autorun.lua"
-------------------------------------------------------
local VJExists = file.Exists("lua/autorun/vj_base_autorun.lua","GAME")
if VJExists == true then
	include('autorun/vj_controls.lua')
	
	local vCat = "HL Resurgence: HOF"
	VJ.AddCategoryInfo(vCat, {Icon = "vj_icons/hof.png"})
		
	VJ.AddNPC("U.S. Medic","npc_vj_hlrhof_armymedic",vCat)
	VJ.AddNPC("Barney","npc_vj_hlrhof_barney",vCat)
	VJ.AddNPC("Barney (Zombie)","npc_vj_hlrhof_barney_zombie",vCat)
	VJ.AddNPC("Vietnamese Soldier","npc_vj_hlrhof_charlie",vCat)
	VJ.AddNPC("Gorilla","npc_vj_hlrhof_gorilla",vCat)
	VJ.AddNPC("Koph","npc_vj_hlrhof_koph",vCat)
	VJ.AddNPC("Koph Child","npc_vj_hlrhof_koph_baby",vCat)
	VJ.AddNPC("U.S. Grunt","npc_vj_hlrhof_mikeforce",vCat)
	VJ.AddNPC("Vietnamese Peasant","npc_vj_hlrhof_peasant",vCat)
	VJ.AddNPC("S.O.G.","npc_vj_hlrhof_sog",vCat)
	VJ.AddNPC("SPX","npc_vj_hlrhof_spx",vCat)
	VJ.AddNPC("SPX Soldier","npc_vj_hlrhof_spx_zombie",vCat)
	VJ.AddNPC("SPX Vietnamese","npc_vj_hlrhof_spx_zombie_v",vCat)
	VJ.AddNPC("SPX Peasant","npc_vj_hlrhof_zombie_p",vCat)
	VJ.AddNPC("SPX Adult","npc_vj_hlrhof_spx_mature",vCat)
	VJ.AddNPC("Super Zombie","npc_vj_hlrhof_superzombie",vCat)
	
	local vCat = "Half-Life Resurgence: HOF-HD"
	VJ.AddCategoryInfo(vCat, {Icon = "vj_icons/hof_hd.png"})
		
	VJ.AddNPC("SPX Super Berserker","npc_vj_hlrhof_agrunt",vCat)
	VJ.AddNPC("U.S. Medic","npc_vj_hlrhof_armymedic_hd",vCat)
	VJ.AddNPC("Barney","npc_vj_hlrhof_barney_hd",vCat)
	VJ.AddNPC("Barney (Zombie)","npc_vj_hlrhof_barney_zombie",vCat)
	VJ.AddNPC("Squid Zombie","npc_vj_hlrhof_bullsquid",vCat)
	VJ.AddNPC("Vietnamese Soldier","npc_vj_hlrhof_charlie_hd",vCat)
	VJ.AddNPC("Gorilla","npc_vj_hlrhof_gorilla_hd",vCat)
	VJ.AddNPC("Suicide Dog","npc_vj_hlrhof_houndeye_hd",vCat)
	VJ.AddNPC("Cone Head Zombie","npc_vj_hlrhof_islave",vCat)
	VJ.AddNPC("U.S. Grunt","npc_vj_hlrhof_mikeforce_hd",vCat)
	VJ.AddNPC("Vietnamese Peasant","npc_vj_hlrhof_peasant_hd",vCat)
	VJ.AddNPC("S.O.G.","npc_vj_hlrhof_sog_hd",vCat)
	VJ.AddNPC("SPX","npc_vj_hlrhof_spx_hd",vCat)
	VJ.AddNPC("SPX Soldier","npc_vj_hlrhof_spx_zombie_hd",vCat)
	VJ.AddNPC("SPX Vietnamese","npc_vj_hlrhof_spx_zombie_v_hd",vCat)
	VJ.AddNPC("SPX Super Zombie","npc_vj_hlrhof_spx_superzombie",vCat)
	VJ.AddNPC("SPX Peasant","npc_vj_hlrhof_zombie_p_hd",vCat)
	VJ.AddNPC("SPX Adult","npc_vj_hlrhof_spx_mature_hd",vCat)
	VJ.AddNPC("Super Zombie","npc_vj_hlrhof_superzombie_hd",vCat)
	VJ.AddNPC("Kate","npc_vj_hlrhof_kate_hd",vCat)
	
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