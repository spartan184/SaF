-- define lua functions
function OnUrshakCreated(self)
end
function RadiateUncontrollableFearUrshak( self )
    ObjectBroadcastEventToEnemies( self, "BeUncontrollablyAfraid", 100 )
end

function OnTrollGenericEvent(self,data)

	local str = tostring( data )

	if str == "show_rock" then
		ObjectHideSubObjectPermanently( self, "ROCK", false )
	elseif str == "hide_rock" then
		ObjectHideSubObjectPermanently( self, "ROCK", true )
	end
end

function OnBodyGuardOrcCreated(self)
    ObjectHideSubObjectPermanently( self, "HEADS01", true )
    ObjectHideSubObjectPermanently( self, "HEADS02", true )

    ObjectHideSubObjectPermanently( self, "SHLDR1", true )
    ObjectHideSubObjectPermanently( self, "SHLDR2", true )
    ObjectHideSubObjectPermanently( self, "SHLDR3", true )
    ObjectHideSubObjectPermanently( self, "AXEA", true )
    ObjectHideSubObjectPermanently( self, "SWORDB", true )
    ObjectHideSubObjectPermanently( self, "SWORDA", true )

    ObjectHideSubObjectPermanently( self, "FORGED_BLADE", true )
    ObjectHideSubObjectPermanently( self, "FORGED_BLADES", true )
    ObjectHideSubObjectPermanently( self, "FireArowTip", true )

    local heads          =    GetRandomNumber()
    local armor          =    GetRandomNumber()
    local weapon          =    GetRandomNumber()

    if heads <= 0.500 then
        ObjectHideSubObjectPermanently( self, "HEADS01", false )
     else
        ObjectHideSubObjectPermanently( self, "HEADS02", false )
    end  

    if armor <= 0.2 then
        ObjectHideSubObjectPermanently( self, "SHDLR1", false )
    elseif armor <= 0.3 then
        ObjectHideSubObjectPermanently( self, "SHDLR2", false )
	elseif armor <= 0.5 then
        ObjectHideSubObjectPermanently( self, "SHDLR3", false )
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end

    if weapon <= 0.3 then
        ObjectHideSubObjectPermanently( self, "SWORDA", false )
    elseif weapon <= 0.6 then
        ObjectHideSubObjectPermanently( self, "SWORDB", false )
    else
        ObjectHideSubObjectPermanently( self, "AXEA", false )
    end
end

function GundabadWargRiderCreated(self)
	ObjectHideSubObjectPermanently( self, "Forged_Blade", true )
	ObjectHideSubObjectPermanently( self, "HELMET01", true )
	ObjectHideSubObjectPermanently( self, "HELMET02", true )
	ObjectHideSubObjectPermanently( self, "HELMET03", true )
	
    local helmet          =    GetRandomNumber()	

	if helmet <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HELMET01", false )
    elseif helmet <= 0.7 then
        ObjectHideSubObjectPermanently( self, "HELMET02", false )
     else
        ObjectHideSubObjectPermanently( self, "HELMET03", false )
    end
end

function OnGoblinArcherCreated(self)
	ObjectHideSubObjectPermanently( self, "Forged_Blade", true )
	ObjectHideSubObjectPermanently( self, "FIREAROWTIP", true )
	ObjectHideSubObjectPermanently( self, "SHIELD", true )
	ObjectHideSubObjectPermanently( self, "HELM01", true )
	ObjectHideSubObjectPermanently( self, "HELM02", true )
	ObjectHideSubObjectPermanently( self, "HEAD01", true )
	ObjectHideSubObjectPermanently( self, "HEAD02", true )
	ObjectHideSubObjectPermanently( self, "HEAD03", true )
	
    local head          =    GetRandomNumber()
    local helmet          =    GetRandomNumber()
	
    if head <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HEAD01", false )
    elseif head <= 0.7 then
        ObjectHideSubObjectPermanently( self, "HEAD02", false )
     else
        ObjectHideSubObjectPermanently( self, "HEAD03", false )
    end

	if helmet <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HELM01", false )
     else
        ObjectHideSubObjectPermanently( self, "HELM02", false )
    end  
end

function OnGoblinFighterCreated(self)
	ObjectHideSubObjectPermanently( self, "Forged_Blade", true )
	ObjectHideSubObjectPermanently( self, "FIREAROWTIP", true )
	ObjectHideSubObjectPermanently( self, "SHIELD", true )
	ObjectHideSubObjectPermanently( self, "HELM01", true )
	ObjectHideSubObjectPermanently( self, "HELM02", true )
	ObjectHideSubObjectPermanently( self, "HEAD01", true )
	ObjectHideSubObjectPermanently( self, "HEAD02", true )
	ObjectHideSubObjectPermanently( self, "HEAD03", true )
	
    local head          =    GetRandomNumber()
    local helmet          =    GetRandomNumber()
	
    if head <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HEAD01", false )
    elseif head <= 0.7 then
        ObjectHideSubObjectPermanently( self, "HEAD02", false )
     else
        ObjectHideSubObjectPermanently( self, "HEAD03", false )
    end

	if helmet <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HELM01", false )
     else
        ObjectHideSubObjectPermanently( self, "HELM02", false )
    end  
end


function OnSwarmGoblinCreated(self)
    ObjectHideSubObjectPermanently( self, "Forged_Blade", true )
	ObjectHideSubObjectPermanently( self, "FIREAROWTIP", true )
	ObjectHideSubObjectPermanently( self, "SHIELD", true )
	ObjectHideSubObjectPermanently( self, "HELM01", true )
	ObjectHideSubObjectPermanently( self, "HELM02", true )
	ObjectHideSubObjectPermanently( self, "HEAD01", true )
	ObjectHideSubObjectPermanently( self, "HEAD02", true )
	ObjectHideSubObjectPermanently( self, "HEAD03", true )
	
    local head          =    GetRandomNumber()
    local helmet          =    GetRandomNumber()
    local shield           =    GetRandomNumber()
	
    if head <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HEAD01", false )
    elseif head <= 0.7 then
        ObjectHideSubObjectPermanently( self, "HEAD02", false )
     else
        ObjectHideSubObjectPermanently( self, "HEAD03", false )
    end

	if helmet <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HELM01", false )
     else
        ObjectHideSubObjectPermanently( self, "HELM02", false )
    end  

    if helmet <= 0.5 then
        ObjectHideSubObjectPermanently( self, "SHIELD", false )
    end 
end

function OnPippinCreated(self)
	ObjectHideSubObjectPermanently( self, "HAHEADNEW", false )
	ObjectHideSubObjectPermanently( self, "LORIENCLOAK", false)
	ObjectHideSubObjectPermanently( self, "LORIENBROOCH", false )
    ObjectHideSubObjectPermanently( self, "HABODY", false )
    ObjectHideSubObjectPermanently( self, "HASHEATHS", false )
    ObjectHideSubObjectPermanently( self, "HASHEATH", false )
    ObjectHideSubObjectPermanently( self, "HASWORD", false )
		ObjectHideSubObjectPermanently( self, "BODY", true )
		ObjectHideSubObjectPermanently( self, "CLOAK", true )
		ObjectHideSubObjectPermanently( self, "HEADNEW", true )
		ObjectHideSubObjectPermanently( self, "SCABBARD", true )
		ObjectHideSubObjectPermanently( self, "SCABBARDS", true )
		ObjectHideSubObjectPermanently( self, "SATCHEL", true )
end
function OnIsengardScoutCreated(self)
	ObjectHideSubObjectPermanently( self, "Forged_Blade", true )
	ObjectHideSubObjectPermanently( self, "Glow", true )
	ObjectHideSubObjectPermanently( self, "SHIELD01", true )
	ObjectHideSubObjectPermanently( self, "SHIELD02", true )
	ObjectHideSubObjectPermanently( self, "QUIVER01", true )
	ObjectHideSubObjectPermanently( self, "QUIVER02", true )

	local quiver         =    GetRandomNumber()
    local shield         =    GetRandomNumber()
	
    if quiver <= 0.5 then
        ObjectHideSubObjectPermanently( self, "QUIVER01", false )
    else
        ObjectHideSubObjectPermanently( self, "QUIVER02", false )
    end  
	
	if shield <= 0.333 then
        ObjectHideSubObjectPermanently( self, "SHIELD01", false )
    elseif shield <= 0.666 then
        ObjectHideSubObjectPermanently( self, "SHIELD02", false )
     else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end   
end

function OnKingsguardCreated(self)
	ObjectHideSubObjectPermanently( self, "Forged_Blade", true )
	ObjectHideSubObjectPermanently( self, "FireArowTip", true )
	
    ObjectHideSubObjectPermanently( self, "HELMHEAD01", true )
    ObjectHideSubObjectPermanently( self, "HELMHEAD02", true )

    ObjectHideSubObjectPermanently( self, "QUIVERA", true )
    ObjectHideSubObjectPermanently( self, "QUIVERB", true )

    ObjectHideSubObjectPermanently( self, "HORSE01", true )
    ObjectHideSubObjectPermanently( self, "HORSE02", true )
    ObjectHideSubObjectPermanently( self, "HORSE03", true )
    ObjectHideSubObjectPermanently( self, "HORSE04", true )

    local horse         =    GetRandomNumber()
    local quiver         =    GetRandomNumber()
    local head 		=   GetRandomNumber()

    if horse <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HORSE01", false )
    elseif horse <= 0.6 then
        ObjectHideSubObjectPermanently( self, "HORSE02", false )
    elseif horse <= 0.8 then
        ObjectHideSubObjectPermanently( self, "HORSE03", false )
     else
        ObjectHideSubObjectPermanently( self, "HORSE04", false )
    end 

    if head <= 0.50 then
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
     else
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    end 

    if quiver <= 0.50 then
        ObjectHideSubObjectPermanently( self, "QUIVERA", false )
     else
        ObjectHideSubObjectPermanently( self, "QUIVERB", false )
    end 
end

function OnFireSpecialActivation(self)
	ObjectHideSubObjectPermanently( self, "FIREAROWTIP", false )
end
function OnFireSpecialStop(self)
	ObjectHideSubObjectPermanently( self, "FIREAROWTIP", true )
end
function HordeFireArrowActivationHook(self)
	HordeBroadcastEventToMembers( self, "User1Achieved", true )
end
function HordeFireArrowDeactivationHook(self)
	HordeBroadcastEventToMembers( self, "User1Lost", true )
end

function OnFireSpecialActivationRanger(self)
    ObjectDoSpecialPower( self, "SpecialAbilityRank2" )
    ObjectHideSubObjectPermanently( self, "FIREAROWTIP", false )
end

function OnFireSpecialStopRanger(self)
    ObjectHideSubObjectPermanently( self, "FIREAROWTIP", true )
end

function OnWitchKingCreated(self)
    ObjectHideSubObjectPermanently( self, "FIRE", true )
end
function HourOfDoomActivation(self)
	ObjectHideSubObjectPermanently( self, "FIRE", false )
end
function HourOfDoomStop(self)
	ObjectHideSubObjectPermanently( self, "FIRE", true )
end

function EndlessSupplyGrantUpgrades(self)
	ObjectGrantUpgrade( self, "Upgrade_IsengardForgedBlades" )
	ObjectGrantUpgrade( self, "Upgrade_IsengardHeavyArmor" )
end

function OnGondorDolAmrothCreated(self)
    ObjectHideSubObjectPermanently( self, "SHIELD", true )
end

function BoromirLastStand(self)
    ObjectDoSpecialPower( self, "SpecialAbilityLastStand" )
end

function OnTheodredCreated(self)
    ObjectHideSubObjectPermanently( self, "HELM", true )
    ObjectHideSubObjectPermanently( self, "HEADHELM", true )
end

function OnTheodredLuckActivation(self)
	ObjectGrantUpgrade( self, "Upgrade_RohanHeavyArmor" )
end

function OnTheodredLuckStop(self)
	ObjectGrantUpgrade( self, "Upgrade_GenericUpgrade2" )
end

function OnRohanSpearmenCreated(self)
    ObjectHideSubObjectPermanently( self, "Forged_Blade", true )
	ObjectHideSubObjectPermanently( self, "OBJECT02", true )
	ObjectHideSubObjectPermanently( self, "BODY01", true )
	ObjectHideSubObjectPermanently( self, "BODY02", true )
	ObjectHideSubObjectPermanently( self, "BODY03", true )
	ObjectHideSubObjectPermanently( self, "CLOAK01", true )
	ObjectHideSubObjectPermanently( self, "CLOAK02", true )
	ObjectHideSubObjectPermanently( self, "CLOAK03", true )
	ObjectHideSubObjectPermanently( self, "COIF", true )
	ObjectHideSubObjectPermanently( self, "HELM01", true )
	ObjectHideSubObjectPermanently( self, "HELM02", true )
	ObjectHideSubObjectPermanently( self, "HELM03", true )
	ObjectHideSubObjectPermanently( self, "HELMHEAD01", true )
	ObjectHideSubObjectPermanently( self, "HELMHEAD02", true )
	ObjectHideSubObjectPermanently( self, "NOHELM01", true )
	ObjectHideSubObjectPermanently( self, "NOHELM02", true )
	ObjectHideSubObjectPermanently( self, "LEGS01", true )
	ObjectHideSubObjectPermanently( self, "LEGS02", true )
	ObjectHideSubObjectPermanently( self, "SHIELD01", true )
	ObjectHideSubObjectPermanently( self, "SHIELD02", true )
	ObjectHideSubObjectPermanently( self, "SHIELD03", true )
	ObjectHideSubObjectPermanently( self, "SHIELD04", true )
	ObjectHideSubObjectPermanently( self, "SHIELD05", true )
	ObjectHideSubObjectPermanently( self, "SHIELD06", true )
	ObjectHideSubObjectPermanently( self, "SHIELD07", true )
    local head          =    GetRandomNumber()
    local shield          =    GetRandomNumber()
    local legs          =    GetRandomNumber()
    local cloaks          =    GetRandomNumber()
    local bodies          =    GetRandomNumber()
    if bodies <= 0.3 then
        ObjectHideSubObjectPermanently( self, "BODY01", false )
    elseif bodies <= 0.6 then
        ObjectHideSubObjectPermanently( self, "BODY02", false )
     else
        ObjectHideSubObjectPermanently( self, "BODY03", false )
    end
    if cloaks <= 0.3 then
        ObjectHideSubObjectPermanently( self, "CLOAK01", false )
    elseif cloaks <= 0.6 then
        ObjectHideSubObjectPermanently( self, "CLOAK03", false )
     else
        ObjectHideSubObjectPermanently( self, "CLOAK02", false )
    end
    if legs <= 0.5 then
        ObjectHideSubObjectPermanently( self, "LEGS01", false )
     else
        ObjectHideSubObjectPermanently( self, "LEGS02", false )
    end	
    if shield <= 0.1 then
        ObjectHideSubObjectPermanently( self, "SHIELD01", false )
    elseif shield <= 0.3 then
        ObjectHideSubObjectPermanently( self, "SHIELD02", false )
    elseif shield <= 0.4 then
        ObjectHideSubObjectPermanently( self, "SHIELD03", false )
    elseif shield <= 0.5 then
        ObjectHideSubObjectPermanently( self, "SHIELD04", false )
    elseif shield <= 0.7 then
        ObjectHideSubObjectPermanently( self, "SHIELD05", false )
    elseif shield <= 0.9 then
        ObjectHideSubObjectPermanently( self, "SHIELD06", false )
     else
        ObjectHideSubObjectPermanently( self, "SHIELD07", false )
    end
    if head <= 0.1 then
        ObjectHideSubObjectPermanently( self, "NOHELM01", false )
    elseif head <= 0.2 then
        ObjectHideSubObjectPermanently( self, "NOHELM02", false )
    elseif head <= 0.3 then
        ObjectHideSubObjectPermanently( self, "COIF", false )
    elseif head <= 0.4 then
        ObjectHideSubObjectPermanently( self, "HELM01", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.5 then
        ObjectHideSubObjectPermanently( self, "HELM02", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.65 then
        ObjectHideSubObjectPermanently( self, "HELM03", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.7 then
        ObjectHideSubObjectPermanently( self, "HELM01", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.9 then
        ObjectHideSubObjectPermanently( self, "HELM02", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
     else
        ObjectHideSubObjectPermanently( self, "HELM03", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    end
end

function OnGoblinCreated(self)
    ObjectHideSubObjectPermanently( self, "SHIELD", true )
    
        local shield    =    GetRandomNumber()
        
    if shield <= 0.40 then
        ObjectHideSubObjectPermanently( self, "SHIELD", false )
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end
end

function ImrahilConsiderUsingDefensePower(self, other, delay, amount)
if tonumber(delay) > 1 then
        if tonumber(amount) >= 500 then
            ObjectDoSpecialPower(self, "SpecialPowerImrahilUnscathed")
            return
        end
    end
end

-- PEASANT FUNCTIONS :D

-- peasant 1: polearms
function OnRohanPeasant1Created(self)
    --Hide Objects code
    --Hide FB
    ObjectHideSubObjectPermanently( self, "FORGED_SPEAR", true )
    --Hide Farm Weapons
    ObjectHideSubObjectPermanently( self, "SCYTHE", true )
    ObjectHideSubObjectPermanently( self, "PITCHFORK", true )
    --Hide Helmets
    ObjectHideSubObjectPermanently( self, "HELMET01", true )
    ObjectHideSubObjectPermanently( self, "HELMET02", true )
    ObjectHideSubObjectPermanently( self, "HELMET03", true )
    
    local helmet    =    GetRandomNumber()
    
    if helmet <= 0.25 then
        ObjectHideSubObjectPermanently( self, "HELMET01", false )
    elseif helmet <= 0.60 then
        ObjectHideSubObjectPermanently( self, "HELMET02", false )
    else
        ObjectHideSubObjectPermanently( self, "HELMET03", false )
    end
    -- Farm Weapon Random
    local weapon    =    GetRandomNumber()
    
    if weapon <= 0.50 then
        ObjectHideSubObjectPermanently( self, "SCYTHE", false )
    else
        ObjectHideSubObjectPermanently( self, "PITCHFORK", false )
    end
    
end

-- peasant 2: swords

function OnRohanPeasant2Created(self)
    --Hide Objects code
    --Hide FB
    ObjectHideSubObjectPermanently( self, "FORGED_SWORD", true )
    ObjectHideSubObjectPermanently( self, "FORGED_AXE", true )
    --Hide Farm Weapons
    ObjectHideSubObjectPermanently( self, "AXE", true )
    --Hide Hats
    ObjectHideSubObjectPermanently( self, "HAT", true )
    ObjectHideSubObjectPermanently( self, "DHAT", true )
    --Hide Drafted Headgear
    ObjectHideSubObjectPermanently( self, "DHAT", true )
    ObjectHideSubObjectPermanently( self, "DHELMET", true )
    --Hide Drafted Weapons
    ObjectHideSubObjectPermanently( self, "DAXE", true )
    --Hide Shield
    ObjectHideSubObjectPermanently( self, "SHIELDBACK", true )
    ObjectHideSubObjectPermanently( self, "SHIELD", true )
    
    -- Hat or no hat
    local hat    =    GetRandomNumber()
    
    if hat <= 0.75 then
        ObjectHideSubObjectPermanently( self, "HAT", false )
    else
        -- no hat
    end
    
    -- shield or no shield
    local shield    =    GetRandomNumber()
    
    if shield <= 0.85 then
        ObjectHideSubObjectPermanently( self, "SHIELD", false )
    else
        -- no shield
    end
    
    -- Farm Weapon Random
    local weapon    =    GetRandomNumber()
    
    if weapon <= 0.80 then
        ObjectHideSubObjectPermanently( self, "SICKLE", false )
    else
    -- bare hands
    end
    
    -- Hat or helmet for kid
    
    local head    =    GetRandomNumber()
    
    if head <= 0.75 then
        ObjectHideSubObjectPermanently( self, "DHELMET", false )
    else
        ObjectHideSubObjectPermanently( self, "DHAT", false )
    end
    
end

-- peasant 3: axes

function OnRohanPeasant3Created(self)
    --Hide Objects code
    --Hide FB
    ObjectHideSubObjectPermanently( self, "FORGED_SWORD", true )
    ObjectHideSubObjectPermanently( self, "FORGED_AXE", true )
    --Hide Farm Weapons
    ObjectHideSubObjectPermanently( self, "SICKLE", true )
    --Hide Hats
    ObjectHideSubObjectPermanently( self, "HAT", true )
    ObjectHideSubObjectPermanently( self, "DHAT", true )
    --Hide Drafted Headgear
    ObjectHideSubObjectPermanently( self, "DHAT", true )
    ObjectHideSubObjectPermanently( self, "DHELMET", true )
    --Hide Drafted Weapons
    ObjectHideSubObjectPermanently( self, "DSWORD", true )
    --Hide Shield
    ObjectHideSubObjectPermanently( self, "SHIELD", true )
    
    -- Hat or no hat
    local hat    =    GetRandomNumber()
    
    if hat <= 0.75 then
        ObjectHideSubObjectPermanently( self, "HAT", false )
    else
        -- no hat
    end
    
    -- Farm Weapon Random
    local weapon    =    GetRandomNumber()
    
    if weapon <= 0.80 then
        ObjectHideSubObjectPermanently( self, "AXE", false )
    else
    -- bare hands
    end
    
    -- Hat or helmet for drafted kid
    
    local head    =    GetRandomNumber()
    
    if head <= 0.75 then
        ObjectHideSubObjectPermanently( self, "DHELMET", false )
    else
        ObjectHideSubObjectPermanently( self, "DHAT", false )
    end
    
end

function OnIsengardWargRiderCreated(self)
    ObjectHideSubObjectPermanently( self, "Forged_Blade", true )
    ObjectHideSubObjectPermanently( self, "HELMET", true )
    
    local head    =    GetRandomNumber()
    
    if head <= 0.50 then
        ObjectHideSubObjectPermanently( self, "HELMET", false )
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end
end

function OnTheodenCreated(self)
end

function OnHaldirCreated(self)
	ObjectHideSubObjectPermanently( self, "HANDLE", true )
end

function OnMerryCreated(self)
	ObjectHideSubObjectPermanently( self, "HAHEADNEW", false )
	ObjectHideSubObjectPermanently( self, "LORIENCLOAK", false)
	ObjectHideSubObjectPermanently( self, "LORIENBROOCH", false )
    ObjectHideSubObjectPermanently( self, "HASHIELD", false )
    ObjectHideSubObjectPermanently( self, "HABODY", false )
    ObjectHideSubObjectPermanently( self, "HALEGS", false )
    ObjectHideSubObjectPermanently( self, "HASCABBARDS", false )
    ObjectHideSubObjectPermanently( self, "HASCABBARD", false )
    ObjectHideSubObjectPermanently( self, "HAMERRYSWORD", false )
	    ObjectHideSubObjectPermanently( self, "BODY", true )
		ObjectHideSubObjectPermanently( self, "CLOAK", true )
		ObjectHideSubObjectPermanently( self, "HEADNEW", true )
		ObjectHideSubObjectPermanently( self, "SCABBARD", true )
		ObjectHideSubObjectPermanently( self, "MERRYSWORD", true )
end

function OnRohanArcherCreated(self)
    ObjectHideSubObjectPermanently( self, "FIREAROWTIP", true )
	ObjectHideSubObjectPermanently( self, "BODY01", true )
	ObjectHideSubObjectPermanently( self, "BODY02", true )
	ObjectHideSubObjectPermanently( self, "BODY03", true )
	ObjectHideSubObjectPermanently( self, "BODY01SLEEVE", true )
	ObjectHideSubObjectPermanently( self, "BODY02SLEEVE", true )
	ObjectHideSubObjectPermanently( self, "BODY03SLEEVE", true )
	ObjectHideSubObjectPermanently( self, "CLOAK01", true )
	ObjectHideSubObjectPermanently( self, "CLOAK02", true )
	ObjectHideSubObjectPermanently( self, "CLOAK03", true )
	ObjectHideSubObjectPermanently( self, "COIF", true )
	ObjectHideSubObjectPermanently( self, "HELM01", true )
	ObjectHideSubObjectPermanently( self, "HELM02", true )
	ObjectHideSubObjectPermanently( self, "HELM03", true )
	ObjectHideSubObjectPermanently( self, "HELMHEAD01", true )
	ObjectHideSubObjectPermanently( self, "HELMHEAD02", true )
	ObjectHideSubObjectPermanently( self, "NOHELM01", true )
	ObjectHideSubObjectPermanently( self, "NOHELM02", true )
	ObjectHideSubObjectPermanently( self, "LEGS01", true )
	ObjectHideSubObjectPermanently( self, "LEGS02", true )
    local head          =    GetRandomNumber()
    local shield          =    GetRandomNumber()
    local legs          =    GetRandomNumber()
    local cloaks          =    GetRandomNumber()
    local bodies          =    GetRandomNumber()
    if bodies <= 0.2 then
        ObjectHideSubObjectPermanently( self, "BODY01", false )
    elseif bodies <= 0.3 then
        ObjectHideSubObjectPermanently( self, "BODY01SLEEVE", false )
	elseif bodies <= 0.5 then
        ObjectHideSubObjectPermanently( self, "BODY02", false )
	elseif bodies <= 0.7 then
        ObjectHideSubObjectPermanently( self, "BODY02SLEEVE", false )
	elseif bodies <= 0.9 then
        ObjectHideSubObjectPermanently( self, "BODY03", false )
     else
        ObjectHideSubObjectPermanently( self, "BODY03SLEEVE", false )
    end
    if cloaks <= 0.3 then
        ObjectHideSubObjectPermanently( self, "CLOAK01", false )
    elseif cloaks <= 0.6 then
        ObjectHideSubObjectPermanently( self, "CLOAK03", false )
     else
        ObjectHideSubObjectPermanently( self, "CLOAK02", false )
    end
    if legs <= 0.5 then
        ObjectHideSubObjectPermanently( self, "LEGS01", false )
     else
        ObjectHideSubObjectPermanently( self, "LEGS02", false )
    end	
    if head <= 0.1 then
        ObjectHideSubObjectPermanently( self, "NOHELM01", false )
    elseif head <= 0.2 then
        ObjectHideSubObjectPermanently( self, "NOHELM02", false )
    elseif head <= 0.3 then
        ObjectHideSubObjectPermanently( self, "COIF", false )
    elseif head <= 0.4 then
        ObjectHideSubObjectPermanently( self, "HELM01", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.5 then
        ObjectHideSubObjectPermanently( self, "HELM02", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.65 then
        ObjectHideSubObjectPermanently( self, "HELM03", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.7 then
        ObjectHideSubObjectPermanently( self, "HELM01", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.9 then
        ObjectHideSubObjectPermanently( self, "HELM02", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
     else
        ObjectHideSubObjectPermanently( self, "HELM03", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    end
end

function OnIsengardFighterCreated(self)
	ObjectHideSubObjectPermanently( self, "Forged_Blade", true )
	ObjectHideSubObjectPermanently( self, "Glow", true )
	ObjectHideSubObjectPermanently( self, "HELMET01", true )
	ObjectHideSubObjectPermanently( self, "HELMET02", true )
	ObjectHideSubObjectPermanently( self, "SHIELD01", true )
	ObjectHideSubObjectPermanently( self, "SHIELD02", true )
	ObjectHideSubObjectPermanently( self, "GAUNTLET_S", true )
    
    local helmet         =    GetRandomNumber()
    local shield         =    GetRandomNumber()

    if helmet <= 0.5 then
        ObjectHideSubObjectPermanently( self, "HELMET01", false )
    else
        ObjectHideSubObjectPermanently( self, "HELMET02", false )
    end   
	
    if shield <= 0.50 then
        ObjectHideSubObjectPermanently( self, "SHIELD01", false )
    else
        ObjectHideSubObjectPermanently( self, "SHIELD02", false )
    end  
end

function OnIsengardPikemanCreated(self)
	ObjectHideSubObjectPermanently( self, "Forged_Blade", true )
	ObjectHideSubObjectPermanently( self, "Glow", true )
	ObjectHideSubObjectPermanently( self, "HELMET01", true )
	ObjectHideSubObjectPermanently( self, "HELMET02", true )
	
    local helmet         =    GetRandomNumber()
    local shield         =    GetRandomNumber()

    if helmet <= 0.5 then
        ObjectHideSubObjectPermanently( self, "HELMET01", false )
    else
        ObjectHideSubObjectPermanently( self, "HELMET02", false )
    end   
  
end

function OnIsengardCrossbowCreated(self)
    ObjectHideSubObject( self, "ARROWNOCK", true )
	ObjectHideSubObjectPermanently( self, "FIREAROWTIP", true )
	ObjectHideSubObjectPermanently( self, "HA", true )
	ObjectHideSubObjectPermanently( self, "HELMET01", true )
	ObjectHideSubObjectPermanently( self, "HELMET02", true )
	ObjectHideSubObjectPermanently( self, "QUIVERA", true )
	ObjectHideSubObjectPermanently( self, "QUIVERB", true )
	
    local quiver         =    GetRandomNumber()
    local helmet         =    GetRandomNumber()

    if quiver <= 0.5 then
        ObjectHideSubObjectPermanently( self, "QUIVERA", false )
    else
        ObjectHideSubObjectPermanently( self, "QUIVERB", false )
    end 
end

function OnIsengardBeserkerCreated(self)
	ObjectHideSubObjectPermanently( self, "TORCH", true )
	ObjectHideSubObjectPermanently( self, "CREST", true )
	ObjectHideSubObjectPermanently( self, "ARROWS", true ) 
end

function OnIsengardFighterRamCreated(self)
    ObjectHideSubObjectPermanently( self, "Forged_Blade", true )
    ObjectHideSubObjectPermanently( self, "SHIELD", true )
end

function OnBallistaCreated(self)
    ObjectHideSubObjectPermanently( self, "MinedArrow", true )
    ObjectHideSubObjectPermanently( self, "SHIELD", true )
    ObjectHideSubObjectPermanently( self, "SHIELD01", true )
    
        local head    =    GetRandomNumber()
        
    if head <= 0.30 then
        ObjectHideSubObjectPermanently( self, "SHIELD", false )
    elseif head <= 0.60 then
        ObjectHideSubObjectPermanently( self, "SHIELD01", false )
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end
end

function OnIsengardSiegeCreated(self)
    ObjectHideSubObjectPermanently( self, "SHIELD", true )
    ObjectHideSubObjectPermanently( self, "SHIELD01", true )
    
        local head    =    GetRandomNumber()
        
    if head <= 0.30 then
        ObjectHideSubObjectPermanently( self, "SHIELD", false )
    elseif head <= 0.60 then
        ObjectHideSubObjectPermanently( self, "SHIELD01", false )
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end
end

function OnMordorUrukCreated(self)
    ObjectHideSubObjectPermanently( self, "FORGED_BLADE", true )
	ObjectHideSubObjectPermanently( self, "FORGED_BLADES", true )
end

function OnMordorArcherCreated(self)
    ObjectHideSubObjectPermanently( self, "HIPS", true )
    ObjectHideSubObjectPermanently( self, "GREAVES", true )
    ObjectHideSubObjectPermanently( self, "FIREAROWTIP", true )
    ObjectHideSubObjectPermanently( self, "ARROWFIRE", true )  
    -- helmet types
    ObjectHideSubObjectPermanently( self, "HELMET01", true )
    ObjectHideSubObjectPermanently( self, "HELMET02", true )
    ObjectHideSubObjectPermanently( self, "HELMET03", true )
    ObjectHideSubObjectPermanently( self, "HELMET04", true )
    ObjectHideSubObjectPermanently( self, "HELMET05", true )   
    ObjectHideSubObjectPermanently( self, "HAIR", true )
    -- head types
    ObjectHideSubObjectPermanently( self, "HEAD01", true )
    ObjectHideSubObjectPermanently( self, "HEAD02", true )
    ObjectHideSubObjectPermanently( self, "HEAD03", true )
    ObjectHideSubObjectPermanently( self, "HEAD04", true )
    -- collar types
    ObjectHideSubObjectPermanently( self, "COLLARA", true )
    ObjectHideSubObjectPermanently( self, "COLLARB", true )
    -- weapon types
    ObjectHideSubObjectPermanently( self, "BOW01", true )
    ObjectHideSubObjectPermanently( self, "BOW02", true )
    -- body types
    ObjectHideSubObjectPermanently( self, "BODY01", true )
    ObjectHideSubObjectPermanently( self, "BODY02", true )
    ObjectHideSubObjectPermanently( self, "BODY03", true )
    -- leg types
    ObjectHideSubObjectPermanently( self, "LEGS01", true )
    ObjectHideSubObjectPermanently( self, "LEGS02", true )
    -- shoulder types
    ObjectHideSubObjectPermanently( self, "SHOULDER01", true )
    ObjectHideSubObjectPermanently( self, "SHOULDER02", true )
    ObjectHideSubObjectPermanently( self, "SHOULDER03", true )
    
    -- assign random gear
    local helm = GetRandomNumber()
    local head = GetRandomNumber()
    local collar = GetRandomNumber()
    local bow = GetRandomNumber()
    local body = GetRandomNumber() 
    local legs = GetRandomNumber() 
    local shoulders = GetRandomNumber() 
    local hips = GetRandomNumber() 

    
    -- assign random helm
    if helm <= 0.12 then
        ObjectHideSubObjectPermanently( self, "HELMET01", false )
    elseif helm <= 0.24 then
        ObjectHideSubObjectPermanently( self, "HELMET02", false )
    elseif helm <= 0.36 then
        ObjectHideSubObjectPermanently( self, "HELMET03", false )
    elseif helm <= 0.48 then
        ObjectHideSubObjectPermanently( self, "HELMET04", false )
    elseif helm <= 0.60 then
        ObjectHideSubObjectPermanently( self, "HELMET05", false )    
    elseif helm <= 0.72 then
        ObjectHideSubObjectPermanently( self, "HAIR", false )   
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end

    -- assign random head
    if head <= 0.25 then
        ObjectHideSubObjectPermanently( self, "HEAD01", false )
    elseif head <= 0.50 then
        ObjectHideSubObjectPermanently( self, "HEAD02", false )
    elseif head <= 0.75 then
        ObjectHideSubObjectPermanently( self, "HEAD03", false )  
    else
        ObjectHideSubObjectPermanently( self, "HEAD04", false )
    end

    -- assign random collar
    if collar <= 0.25 then
        ObjectHideSubObjectPermanently( self, "COLLARA", false )
    elseif collar <= 0.50 then
        ObjectHideSubObjectPermanently( self, "COLLARB", false )
    else
        ObjectHideSubObjectPermanently( self, "NONE", false )
    end
    
    -- assign random bow
    if bow <= 0.50 then
        ObjectHideSubObjectPermanently( self, "BOW01", false )
    else
        ObjectHideSubObjectPermanently( self, "BOW02", false )
    end

    -- assign random body
    if body <= 0.33 then
        ObjectHideSubObjectPermanently( self, "BODY01", false )
    elseif body <= 0.66 then
        ObjectHideSubObjectPermanently( self, "BODY02", false )
    else
        ObjectHideSubObjectPermanently( self, "BODY03", false )
    end

    -- assign random legs
    if legs <= 0.33 then
        ObjectHideSubObjectPermanently( self, "LEGS01", false )
    elseif legs <= 0.66 then
        ObjectHideSubObjectPermanently( self, "LEGS02", false )
        ObjectHideSubObjectPermanently( self, "GREAVES", false )
    else
        ObjectHideSubObjectPermanently( self, "LEGS02", false )
    end

    -- assign random shoulders
    if shoulders <= 0.18 then
        ObjectHideSubObjectPermanently( self, "SHOULDER01", false )
    elseif shoulders <= 0.36 then
        ObjectHideSubObjectPermanently( self, "SHOULDER02", false )
    elseif shoulders <= 0.54 then
        ObjectHideSubObjectPermanently( self, "SHOULDER03", false )  
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end

    -- assign random hips
    if hips <= 0.50 then
        ObjectHideSubObjectPermanently( self, "HIPS", false )
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end
end

function OnMordorBannerCreated(self)
    ObjectHideSubObjectPermanently( self, "FORGED_BLADE", true )
	ObjectHideSubObjectPermanently( self, "FORGED_BLADES", true )

    ObjectHideSubObjectPermanently( self, "GREAVES", true )
    -- helmet types
    ObjectHideSubObjectPermanently( self, "HELMET01", true )
    ObjectHideSubObjectPermanently( self, "HELMET02", true )
    ObjectHideSubObjectPermanently( self, "HELMET03", true )
    ObjectHideSubObjectPermanently( self, "HELMET04", true )
    ObjectHideSubObjectPermanently( self, "HELMET05", true )   
    ObjectHideSubObjectPermanently( self, "HAIR", true )
    -- head types
    ObjectHideSubObjectPermanently( self, "HEAD01", true )
    ObjectHideSubObjectPermanently( self, "HEAD02", true )
    ObjectHideSubObjectPermanently( self, "HEAD03", true )
    ObjectHideSubObjectPermanently( self, "HEAD04", true )
    -- collar types
    ObjectHideSubObjectPermanently( self, "COLLARA", true )
    ObjectHideSubObjectPermanently( self, "COLLARB", true )
    -- weapon types
    ObjectHideSubObjectPermanently( self, "SWORDR01", true )
    ObjectHideSubObjectPermanently( self, "SWORDR02", true )
    ObjectHideSubObjectPermanently( self, "SWORDR03", true )
    ObjectHideSubObjectPermanently( self, "SWORDR04", true )
    ObjectHideSubObjectPermanently( self, "SWORDR05", true )
    -- body types
    ObjectHideSubObjectPermanently( self, "BODY01", true )
    ObjectHideSubObjectPermanently( self, "BODY02", true )
    ObjectHideSubObjectPermanently( self, "BODY03", true )
    -- leg types
    ObjectHideSubObjectPermanently( self, "LEGS01", true )
    ObjectHideSubObjectPermanently( self, "LEGS02", true )
    -- shoulder types
    ObjectHideSubObjectPermanently( self, "SHOULDER01", true )
    ObjectHideSubObjectPermanently( self, "SHOULDER02", true )
    ObjectHideSubObjectPermanently( self, "SHOULDER03", true )
    
    -- assign random gear
    local helm = GetRandomNumber()
    local head = GetRandomNumber()
    local collar = GetRandomNumber()
    local weapon = GetRandomNumber()
    local body = GetRandomNumber() 
    local legs = GetRandomNumber() 
    local shoulders = GetRandomNumber() 
    
    -- assign random helm
    if helm <= 0.12 then
        ObjectHideSubObjectPermanently( self, "HELMET01", false )
    elseif helm <= 0.24 then
        ObjectHideSubObjectPermanently( self, "HELMET02", false )
    elseif helm <= 0.36 then
        ObjectHideSubObjectPermanently( self, "HELMET03", false )
    elseif helm <= 0.48 then
        ObjectHideSubObjectPermanently( self, "HELMET04", false )
    elseif helm <= 0.60 then
        ObjectHideSubObjectPermanently( self, "HELMET05", false )    
    elseif helm <= 0.72 then
        ObjectHideSubObjectPermanently( self, "HAIR", false )   
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end

    -- assign random head
    if head <= 0.25 then
        ObjectHideSubObjectPermanently( self, "HEAD01", false )
    elseif head <= 0.50 then
        ObjectHideSubObjectPermanently( self, "HEAD02", false )
    elseif head <= 0.75 then
        ObjectHideSubObjectPermanently( self, "HEAD03", false )  
    else
        ObjectHideSubObjectPermanently( self, "HEAD04", false )
    end

    -- assign random collar
    if collar <= 0.25 then
        ObjectHideSubObjectPermanently( self, "COLLARA", false )
    elseif collar <= 0.50 then
        ObjectHideSubObjectPermanently( self, "COLLARB", false )
    else
        ObjectHideSubObjectPermanently( self, "NONE", false )
    end
    
    -- assign random weapon
    if weapon <= 0.20 then
        ObjectHideSubObjectPermanently( self, "SWORDR01", false )
    elseif weapon <= 0.40 then
        ObjectHideSubObjectPermanently( self, "SWORDR02", false )
    elseif weapon <= 0.60 then
        ObjectHideSubObjectPermanently( self, "SWORDR03", false )
    elseif weapon <= 0.80 then
        ObjectHideSubObjectPermanently( self, "SWORDR04", false )
    else
        ObjectHideSubObjectPermanently( self, "SWORDR05", false )
    end

    -- assign random body
    if body <= 0.33 then
        ObjectHideSubObjectPermanently( self, "BODY01", false )
    elseif body <= 0.66 then
        ObjectHideSubObjectPermanently( self, "BODY02", false )
    else
        ObjectHideSubObjectPermanently( self, "BODY03", false )
    end

    -- assign random legs
    if legs <= 0.33 then
        ObjectHideSubObjectPermanently( self, "LEGS01", false )
    elseif legs <= 0.66 then
        ObjectHideSubObjectPermanently( self, "LEGS02", false )
        ObjectHideSubObjectPermanently( self, "GREAVES", false )
    else
        ObjectHideSubObjectPermanently( self, "LEGS02", false )
    end

    -- assign random shoulders
    if shoulders <= 0.18 then
        ObjectHideSubObjectPermanently( self, "SHOULDER01", false )
    elseif shoulders <= 0.36 then
        ObjectHideSubObjectPermanently( self, "SHOULDER02", false )
    elseif shoulders <= 0.54 then
        ObjectHideSubObjectPermanently( self, "SHOULDER03", false )  
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end
end

function OnMordorSpearmenCreated(self)
    ObjectHideSubObjectPermanently( self, "HIPS", true )
    ObjectHideSubObjectPermanently( self, "GREAVES", true )
    ObjectHideSubObjectPermanently( self, "QUIVER", true )
    -- helmet types
    ObjectHideSubObjectPermanently( self, "HELMET01", true )
    ObjectHideSubObjectPermanently( self, "HELMET02", true )
    ObjectHideSubObjectPermanently( self, "HELMET03", true )
    ObjectHideSubObjectPermanently( self, "HELMET04", true )
    ObjectHideSubObjectPermanently( self, "HELMET05", true )   
    ObjectHideSubObjectPermanently( self, "HAIR", true )
    -- head types
    ObjectHideSubObjectPermanently( self, "HEAD01", true )
    ObjectHideSubObjectPermanently( self, "HEAD02", true )
    ObjectHideSubObjectPermanently( self, "HEAD03", true )
    ObjectHideSubObjectPermanently( self, "HEAD04", true )
    -- collar types
    ObjectHideSubObjectPermanently( self, "COLLARA", true )
    ObjectHideSubObjectPermanently( self, "COLLARB", true )
    -- weapon types
    ObjectHideSubObjectPermanently( self, "SPEAR01", true )
    ObjectHideSubObjectPermanently( self, "SPEAR02", true )
    ObjectHideSubObjectPermanently( self, "SPEAR03", true )
    ObjectHideSubObjectPermanently( self, "SPEAR04", true )
    -- body types
    ObjectHideSubObjectPermanently( self, "BODY01", true )
    ObjectHideSubObjectPermanently( self, "BODY02", true )
    ObjectHideSubObjectPermanently( self, "BODY03", true )
    -- leg types
    ObjectHideSubObjectPermanently( self, "LEGS01", true )
    ObjectHideSubObjectPermanently( self, "LEGS02", true )
    -- shoulder types
    ObjectHideSubObjectPermanently( self, "SHOULDER01", true )
    ObjectHideSubObjectPermanently( self, "SHOULDER02", true )
    ObjectHideSubObjectPermanently( self, "SHOULDER03", true )
    
    -- assign random gear
    local helm = GetRandomNumber()
    local head = GetRandomNumber()
    local collar = GetRandomNumber()
    local spear = GetRandomNumber()
    local body = GetRandomNumber() 
    local legs = GetRandomNumber() 
    local shoulders = GetRandomNumber() 
    local hips = GetRandomNumber() 
    
    -- assign random helm
    if helm <= 0.12 then
        ObjectHideSubObjectPermanently( self, "HELMET01", false )
    elseif helm <= 0.24 then
        ObjectHideSubObjectPermanently( self, "HELMET02", false )
    elseif helm <= 0.36 then
        ObjectHideSubObjectPermanently( self, "HELMET03", false )
    elseif helm <= 0.48 then
        ObjectHideSubObjectPermanently( self, "HELMET04", false )
    elseif helm <= 0.60 then
        ObjectHideSubObjectPermanently( self, "HELMET05", false )    
    elseif helm <= 0.72 then
        ObjectHideSubObjectPermanently( self, "HAIR", false )   
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end

    -- assign random head
    if head <= 0.25 then
        ObjectHideSubObjectPermanently( self, "HEAD01", false )
    elseif head <= 0.50 then
        ObjectHideSubObjectPermanently( self, "HEAD02", false )
    elseif head <= 0.75 then
        ObjectHideSubObjectPermanently( self, "HEAD03", false )  
    else
        ObjectHideSubObjectPermanently( self, "HEAD04", false )
    end

    -- assign random collar
    if collar <= 0.25 then
        ObjectHideSubObjectPermanently( self, "COLLARA", false )
    elseif collar <= 0.50 then
        ObjectHideSubObjectPermanently( self, "COLLARB", false )
    else
        ObjectHideSubObjectPermanently( self, "NONE", false )
    end
    
    -- assign random spear
    if spear <= 0.25 then
        ObjectHideSubObjectPermanently( self, "SPEAR01", false )
    elseif spear <= 0.50 then
        ObjectHideSubObjectPermanently( self, "SPEAR02", false )
    elseif spear <= 0.75 then
        ObjectHideSubObjectPermanently( self, "SPEAR03", false )
    else
        ObjectHideSubObjectPermanently( self, "SPEAR04", false )
    end

    -- assign random body
    if body <= 0.33 then
        ObjectHideSubObjectPermanently( self, "BODY01", false )
    elseif body <= 0.66 then
        ObjectHideSubObjectPermanently( self, "BODY02", false )
    else
        ObjectHideSubObjectPermanently( self, "BODY03", false )
    end

    -- assign random legs
    if legs <= 0.33 then
        ObjectHideSubObjectPermanently( self, "LEGS01", false )
    elseif legs <= 0.66 then
        ObjectHideSubObjectPermanently( self, "LEGS02", false )
        ObjectHideSubObjectPermanently( self, "GREAVES", false )
    else
        ObjectHideSubObjectPermanently( self, "LEGS02", false )
    end

    -- assign random shoulders
    if shoulders <= 0.18 then
        ObjectHideSubObjectPermanently( self, "SHOULDER01", false )
    elseif shoulders <= 0.36 then
        ObjectHideSubObjectPermanently( self, "SHOULDER02", false )
    elseif shoulders <= 0.54 then
        ObjectHideSubObjectPermanently( self, "SHOULDER03", false )  
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end

    -- assign random hips
    if hips <= 0.50 then
        ObjectHideSubObjectPermanently( self, "HIPS", false )
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end
end

function OnMordorNewFighterCreated(self)
    ObjectHideSubObjectPermanently( self, "HIPS", true )
    ObjectHideSubObjectPermanently( self, "GREAVES", true )
    ObjectHideSubObjectPermanently( self, "QUIVER", true )
    -- helmet types
    ObjectHideSubObjectPermanently( self, "HELMET01", true )
    ObjectHideSubObjectPermanently( self, "HELMET02", true )
    ObjectHideSubObjectPermanently( self, "HELMET03", true )
    ObjectHideSubObjectPermanently( self, "HELMET04", true )
    ObjectHideSubObjectPermanently( self, "HELMET05", true )   
    ObjectHideSubObjectPermanently( self, "HAIR", true )
    -- head types
    ObjectHideSubObjectPermanently( self, "HEAD01", true )
    ObjectHideSubObjectPermanently( self, "HEAD02", true )
    ObjectHideSubObjectPermanently( self, "HEAD03", true )
    ObjectHideSubObjectPermanently( self, "HEAD04", true )
    -- collar types
    ObjectHideSubObjectPermanently( self, "COLLARA", true )
    ObjectHideSubObjectPermanently( self, "COLLARB", true )
    -- weapon types
    ObjectHideSubObjectPermanently( self, "SWORDL01", true )
    ObjectHideSubObjectPermanently( self, "SWORDL02", true )
    ObjectHideSubObjectPermanently( self, "SWORDL03", true )
    ObjectHideSubObjectPermanently( self, "SWORDL04", true )
    ObjectHideSubObjectPermanently( self, "SWORDL05", true )
    ObjectHideSubObjectPermanently( self, "SWORDR01", true )
    ObjectHideSubObjectPermanently( self, "SWORDR02", true )
    ObjectHideSubObjectPermanently( self, "SWORDR03", true )
    ObjectHideSubObjectPermanently( self, "SWORDR04", true )
    ObjectHideSubObjectPermanently( self, "SWORDR05", true )
    ObjectHideSubObjectPermanently( self, "SHIELD01", true )
    ObjectHideSubObjectPermanently( self, "SHIELD02", true )
    ObjectHideSubObjectPermanently( self, "SHIELD03", true )
    ObjectHideSubObjectPermanently( self, "SHIELD04", true )
    ObjectHideSubObjectPermanently( self, "SHIELD05", true )
    -- body types
    ObjectHideSubObjectPermanently( self, "BODY01", true )
    ObjectHideSubObjectPermanently( self, "BODY02", true )
    ObjectHideSubObjectPermanently( self, "BODY03", true )
    -- leg types
    ObjectHideSubObjectPermanently( self, "LEGS01", true )
    ObjectHideSubObjectPermanently( self, "LEGS02", true )
    -- shoulder types
    ObjectHideSubObjectPermanently( self, "SHOULDER01", true )
    ObjectHideSubObjectPermanently( self, "SHOULDER02", true )
    ObjectHideSubObjectPermanently( self, "SHOULDER03", true )
    
    -- assign random gear
    local helm = GetRandomNumber()
    local head = GetRandomNumber()
    local collar = GetRandomNumber()
    local leftweapon = GetRandomNumber()
    local rightweapon = GetRandomNumber()
    local body = GetRandomNumber() 
    local legs = GetRandomNumber() 
    local shoulders = GetRandomNumber() 
    local hips = GetRandomNumber() 
    
    -- assign random helm
    if helm <= 0.12 then
        ObjectHideSubObjectPermanently( self, "HELMET01", false )
    elseif helm <= 0.24 then
        ObjectHideSubObjectPermanently( self, "HELMET02", false )
    elseif helm <= 0.36 then
        ObjectHideSubObjectPermanently( self, "HELMET03", false )
    elseif helm <= 0.48 then
        ObjectHideSubObjectPermanently( self, "HELMET04", false )
    elseif helm <= 0.60 then
        ObjectHideSubObjectPermanently( self, "HELMET05", false )    
    elseif helm <= 0.72 then
        ObjectHideSubObjectPermanently( self, "HAIR", false )   
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end

    -- assign random head
    if head <= 0.25 then
        ObjectHideSubObjectPermanently( self, "HEAD01", false )
    elseif head <= 0.50 then
        ObjectHideSubObjectPermanently( self, "HEAD02", false )
    elseif head <= 0.75 then
        ObjectHideSubObjectPermanently( self, "HEAD03", false )  
    else
        ObjectHideSubObjectPermanently( self, "HEAD04", false )
    end

    -- assign random collar
    if collar <= 0.25 then
        ObjectHideSubObjectPermanently( self, "COLLARA", false )
    elseif collar <= 0.50 then
        ObjectHideSubObjectPermanently( self, "COLLARB", false )
    else
        ObjectHideSubObjectPermanently( self, "NONE", false )
    end
    
    -- assign random weapon right hand
    if rightweapon <= 0.20 then
        ObjectHideSubObjectPermanently( self, "SWORDR01", false )
    elseif rightweapon <= 0.40 then
        ObjectHideSubObjectPermanently( self, "SWORDR02", false )
    elseif rightweapon <= 0.60 then
        ObjectHideSubObjectPermanently( self, "SWORDR03", false )
    elseif rightweapon <= 0.80 then
        ObjectHideSubObjectPermanently( self, "SWORDR04", false )
    else
        ObjectHideSubObjectPermanently( self, "SWORDR05", false )
    end
    
        -- assign random weapon left hand
    if leftweapon <= 0.09 then
        ObjectHideSubObjectPermanently( self, "SWORDL01", false )
    elseif leftweapon <= 0.18 then
        ObjectHideSubObjectPermanently( self, "SWORDL02", false )
    elseif leftweapon <= 0.27 then
        ObjectHideSubObjectPermanently( self, "SWORDL03", false )
    elseif leftweapon <= 0.36 then
        ObjectHideSubObjectPermanently( self, "SWORDL04", false )
    elseif leftweapon <= 0.45 then
        ObjectHideSubObjectPermanently( self, "SWORDL05", false )
    elseif leftweapon <= 0.54 then
        ObjectHideSubObjectPermanently( self, "SHIELD01", false )
    elseif leftweapon <= 0.63 then
        ObjectHideSubObjectPermanently( self, "SHIELD02", false )
    elseif leftweapon <= 0.72 then
        ObjectHideSubObjectPermanently( self, "SHIELD03", false )
    elseif leftweapon <= 0.81 then
        ObjectHideSubObjectPermanently( self, "SHIELD04", false )
    elseif leftweapon <= 0.90 then
        ObjectHideSubObjectPermanently( self, "SHIELD05", false )
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end

    -- assign random body
    if body <= 0.33 then
        ObjectHideSubObjectPermanently( self, "BODY01", false )
    elseif body <= 0.66 then
        ObjectHideSubObjectPermanently( self, "BODY02", false )
    else
        ObjectHideSubObjectPermanently( self, "BODY03", false )
    end

    -- assign random legs
    if legs <= 0.33 then
        ObjectHideSubObjectPermanently( self, "LEGS01", false )
    elseif legs <= 0.66 then
        ObjectHideSubObjectPermanently( self, "LEGS02", false )
        ObjectHideSubObjectPermanently( self, "GREAVES", false )
    else
        ObjectHideSubObjectPermanently( self, "LEGS02", false )
    end

    -- assign random shoulders
    if shoulders <= 0.18 then
        ObjectHideSubObjectPermanently( self, "SHOULDER01", false )
    elseif shoulders <= 0.36 then
        ObjectHideSubObjectPermanently( self, "SHOULDER02", false )
    elseif shoulders <= 0.54 then
        ObjectHideSubObjectPermanently( self, "SHOULDER03", false )  
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end

    -- assign random hips
    if hips <= 0.50 then
        ObjectHideSubObjectPermanently( self, "HIPS", false )
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end
end

function OnIthilienRangerCreated(self)

    ObjectHideSubObjectPermanently( self, "FireArowTip", true )
	
	;------------------------HEADS UNHOODED
	ObjectHideSubObjectPermanently( self, "HEAD1", true )
	ObjectHideSubObjectPermanently( self, "HEAD2", true )
	ObjectHideSubObjectPermanently( self, "HEAD3", true )
	ObjectHideSubObjectPermanently( self, "HEAD4", true )
	ObjectHideSubObjectPermanently( self, "HEAD5", true )
	ObjectHideSubObjectPermanently( self, "HEAD6", true )
	;------------------------HEADS HOODED
	ObjectHideSubObjectPermanently( self, "HEADHD1", true )
	ObjectHideSubObjectPermanently( self, "HEADHD2", true )
	ObjectHideSubObjectPermanently( self, "HEADHD3", true )
	ObjectHideSubObjectPermanently( self, "HEADHD4", true )
	ObjectHideSubObjectPermanently( self, "HEADHD5", true )
	ObjectHideSubObjectPermanently( self, "HEADHD6", true )
	;------------------------HEADS HOODED MASKED
	ObjectHideSubObjectPermanently( self, "HEADHDMSK1", true )	
	ObjectHideSubObjectPermanently( self, "HEADHDMSK2", true )
	ObjectHideSubObjectPermanently( self, "HEADHDMSK3", true )
	ObjectHideSubObjectPermanently( self, "HEADHDMSK4", true )
	ObjectHideSubObjectPermanently( self, "HEADHDMSK5", true )
	ObjectHideSubObjectPermanently( self, "HEADHDMSK6", true )
	;------------------------CLOAKS	
	ObjectHideSubObjectPermanently( self, "CLOAK1", true )
	ObjectHideSubObjectPermanently( self, "CLOAK2", true )
	ObjectHideSubObjectPermanently( self, "CLOAK3", true )
	ObjectHideSubObjectPermanently( self, "CLOAK4", true )
	ObjectHideSubObjectPermanently( self, "CLOAK5", true )
	ObjectHideSubObjectPermanently( self, "CLOAK6", true )
	ObjectHideSubObjectPermanently( self, "CLOAK7", true )
	;------------------------HOODS	
	ObjectHideSubObjectPermanently( self, "HOOD1", true )
	ObjectHideSubObjectPermanently( self, "HOOD2", true )
	ObjectHideSubObjectPermanently( self, "HOOD3", true )
	ObjectHideSubObjectPermanently( self, "HOOD4", true )
	ObjectHideSubObjectPermanently( self, "HOOD5", true )
	ObjectHideSubObjectPermanently( self, "HOOD6", true )
	ObjectHideSubObjectPermanently( self, "HOOD7", true )
	;------------------------HOODSDOWN	
	ObjectHideSubObjectPermanently( self, "HOODDOWN1", true )
	ObjectHideSubObjectPermanently( self, "HOODDOWN2", true )
	ObjectHideSubObjectPermanently( self, "HOODDOWN3", true )
	ObjectHideSubObjectPermanently( self, "HOODDOWN4", true )
	ObjectHideSubObjectPermanently( self, "HOODDOWN5", true )
	ObjectHideSubObjectPermanently( self, "HOODDOWN6", true )
	ObjectHideSubObjectPermanently( self, "HOODDOWN7", true )
	;------------------------BODY
	ObjectHideSubObjectPermanently( self, "BODY1", true )
	ObjectHideSubObjectPermanently( self, "BODY2", true )
	ObjectHideSubObjectPermanently( self, "BODY3", true )
	ObjectHideSubObjectPermanently( self, "BODY4", true )
	ObjectHideSubObjectPermanently( self, "BODY5", true )
	ObjectHideSubObjectPermanently( self, "BODY6", true )
	ObjectHideSubObjectPermanently( self, "BODY7", true )
	;------------------------ARMS
	ObjectHideSubObjectPermanently( self, "ARMS1", true )
	ObjectHideSubObjectPermanently( self, "ARMS2", true )
	ObjectHideSubObjectPermanently( self, "ARMS3", true )
	;------------------------LEGS
	ObjectHideSubObjectPermanently( self, "LEGS1", true )
	ObjectHideSubObjectPermanently( self, "LEGS2", true )
	;------------------------TABARDS
	ObjectHideSubObjectPermanently( self, "TABARD1", true )
	ObjectHideSubObjectPermanently( self, "TABARD2", true )
	ObjectHideSubObjectPermanently( self, "TABARD3", true )
	;------------------------QUIVERS
	ObjectHideSubObjectPermanently( self, "QUIVER1", true )
	ObjectHideSubObjectPermanently( self, "QUIVER2", true )
	ObjectHideSubObjectPermanently( self, "QUIVER3", true )
    
    ObjectHideSubObjectPermanently( self, "RANGER", true )
    ObjectHideSubObjectPermanently( self, "RANGERHOOD", true )
    ObjectHideSubObjectPermanently( self, "RANGERTABARD", true )
    ObjectHideSubObjectPermanently( self, "RANGERHOODTABAR", true )
    
	local head	   =    GetRandomNumber()
	local head2	   =    GetRandomNumber()
    local body    =    GetRandomNumber()
	local cloak    =    GetRandomNumber()
	local leg    =    GetRandomNumber()
	local arm    =    GetRandomNumber()
	
	local quiver    =    GetRandomNumber()
	local tabard   =    GetRandomNumber()
	
	if head <= 0.15 then
        ObjectHideSubObjectPermanently( self, "HEAD1", false )
    elseif head <= 0.30 then
        ObjectHideSubObjectPermanently( self, "HEAD2", false )
    elseif head <= 0.45 then
        ObjectHideSubObjectPermanently( self, "HEAD3", false )
	elseif head <= 0.60 then
        ObjectHideSubObjectPermanently( self, "HEAD4", false ) 
	elseif head <= 0.75 then
        ObjectHideSubObjectPermanently( self, "HEAD5", false )  		
    else
        ObjectHideSubObjectPermanently( self, "HEAD6", false )
    end
	
	if head2 <= 0.08 then
        ObjectHideSubObjectPermanently( self, "HEADHD1", false )
    elseif head <= 0.16 then
        ObjectHideSubObjectPermanently( self, "HEADHD2", false )
    elseif head <= 0.24 then
        ObjectHideSubObjectPermanently( self, "HEADHD3", false )
	elseif head <= 0.32 then
        ObjectHideSubObjectPermanently( self, "HEADHD4", false ) 
	elseif head <= 0.40 then
        ObjectHideSubObjectPermanently( self, "HEADHD5", false ) 
	elseif head <= 0.48 then
        ObjectHideSubObjectPermanently( self, "HEADHD6", false )  
	elseif head <= 0.56 then
        ObjectHideSubObjectPermanently( self, "HEADHDMSK1", false )
	elseif head <= 0.64 then
        ObjectHideSubObjectPermanently( self, "HEADHDMSK2", false )
	elseif head <= 0.72 then
        ObjectHideSubObjectPermanently( self, "HEADHDMSK3", false )
	elseif head <= 0.80 then
        ObjectHideSubObjectPermanently( self, "HEADHDMSK4", false )
	elseif head <= 0.88 then
        ObjectHideSubObjectPermanently( self, "HEADHDMSK5", false )
    else
        ObjectHideSubObjectPermanently( self, "HEADHDMSK6", false )
    end

    if body <= 0.14 then
        ObjectHideSubObjectPermanently( self, "BODY1", false )
    elseif body <= 0.28 then
        ObjectHideSubObjectPermanently( self, "BODY2", false )
    elseif body <= 0.42 then
        ObjectHideSubObjectPermanently( self, "BODY3", false )
	elseif body <= 0.56 then
        ObjectHideSubObjectPermanently( self, "BODY4", false ) 
	elseif body <= 0.70 then
        ObjectHideSubObjectPermanently( self, "BODY5", false )
	elseif body <= 0.84 then
        ObjectHideSubObjectPermanently( self, "BODY6", false )    		
    else
        ObjectHideSubObjectPermanently( self, "BODY7", false )
    end
	
	if cloak <= 0.14 then
        ObjectHideSubObjectPermanently( self, "CLOAK1", false )
        ObjectHideSubObjectPermanently( self, "HOOD1", false )
		ObjectHideSubObjectPermanently( self, "HOODDOWN1", false )
    elseif cloak <= 0.28 then
        ObjectHideSubObjectPermanently( self, "CLOAK2", false )
        ObjectHideSubObjectPermanently( self, "HOOD2", false )
		ObjectHideSubObjectPermanently( self, "HOODDOWN2", false )
	elseif cloak <= 0.42 then
        ObjectHideSubObjectPermanently( self, "CLOAK3", false )
        ObjectHideSubObjectPermanently( self, "HOOD3", false )
		ObjectHideSubObjectPermanently( self, "HOODDOWN3", false )
	elseif cloak <= 0.56 then
        ObjectHideSubObjectPermanently( self, "CLOAK4", false )
        ObjectHideSubObjectPermanently( self, "HOOD4", false )
		ObjectHideSubObjectPermanently( self, "HOODDOWN4", false )
	elseif cloak <= 0.70 then
        ObjectHideSubObjectPermanently( self, "CLOAK5", false )
        ObjectHideSubObjectPermanently( self, "HOOD5", false )
		ObjectHideSubObjectPermanently( self, "HOODDOWN5", false )
	elseif cloak <= 0.86 then
        ObjectHideSubObjectPermanently( self, "CLOAK6", false )
        ObjectHideSubObjectPermanently( self, "HOOD6", false )
		ObjectHideSubObjectPermanently( self, "HOODDOWN6", false )
     else
        ObjectHideSubObjectPermanently( self, "CLOAK7", false )
        ObjectHideSubObjectPermanently( self, "HOOD7", false )
		ObjectHideSubObjectPermanently( self, "HOODDOWN7", false )
    end  
	
	if arm <= 0.333 then
        ObjectHideSubObjectPermanently( self, "ARMS1", false )
    elseif arm <= 0.666 then
        ObjectHideSubObjectPermanently( self, "ARMS2", false )
    else
        ObjectHideSubObjectPermanently( self, "ARMS3", false )
    end
	
	if quiver <= 0.333 then
        ObjectHideSubObjectPermanently( self, "QUIVER1", false )
    elseif quiver <= 0.666 then
        ObjectHideSubObjectPermanently( self, "QUIVER2", false )
    else
        ObjectHideSubObjectPermanently( self, "QUIVER3", false )
    end
	
	if tabard <= 0.20 then
        ObjectHideSubObjectPermanently( self, "TABARD1", false )
    elseif tabard <= 0.40 then
        ObjectHideSubObjectPermanently( self, "TABARD2", false )
	elseif tabard <= 0.60 then
        ObjectHideSubObjectPermanently( self, "TABARD3", false )
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end
	
	if leg <= 0.5 then
        ObjectHideSubObjectPermanently( self, "LEGS1", false )
     else
        ObjectHideSubObjectPermanently( self, "LEGS2", false )
    end
end

function OnEriadorSpearmanCreated(self)
    ObjectHideSubObjectPermanently( self, "REGULARFB", true )
end

function OnGreyRangerCreated(self)

    ObjectHideSubObjectPermanently( self, "FireArowTip", true )
    
    ObjectHideSubObjectPermanently( self, "HELM", true )
    ObjectHideSubObjectPermanently( self, "HELMHOOD", true )
    
    local ranger    =    GetRandomNumber()

    if ranger <= 0.45 then
        ObjectHideSubObjectPermanently( self, "HELM", false )        
    else
        ObjectHideSubObjectPermanently( self, "HELMHOOD", false )
    end
end

function OnHaradrimArcherCreated(self)
	ObjectHideSubObjectPermanently( self, "FireArowTip", true )
	ObjectHideSubObjectPermanently( self, "BARB", true )
	ObjectHideSubObject( self, "ArrowNock", true )
end

function OnRohanBannerCreated(self)
    ObjectHideSubObjectPermanently( self, "BODY01", true )
	ObjectHideSubObjectPermanently( self, "BODY02", true )
	ObjectHideSubObjectPermanently( self, "BODY03", true )
	ObjectHideSubObjectPermanently( self, "BODY04", true )	
	ObjectHideSubObjectPermanently( self, "FLAG01", true )
	ObjectHideSubObjectPermanently( self, "FLAG02", true )
	ObjectHideSubObjectPermanently( self, "FLAG03", true )
	ObjectHideSubObjectPermanently( self, "COIF", true )
	ObjectHideSubObjectPermanently( self, "HELM01", true )
	ObjectHideSubObjectPermanently( self, "HELM02", true )
	ObjectHideSubObjectPermanently( self, "HELM03", true )
	ObjectHideSubObjectPermanently( self, "HELMHEAD01", true )
	ObjectHideSubObjectPermanently( self, "HELMHEAD02", true )
	ObjectHideSubObjectPermanently( self, "NOHELM01", true )
	ObjectHideSubObjectPermanently( self, "NOHELM02", true )
    local head          =    GetRandomNumber()
    local flags          =    GetRandomNumber()
    local bodies          =    GetRandomNumber()
    if bodies <= 0.2 then
        ObjectHideSubObjectPermanently( self, "BODY01", false )
    elseif bodies <= 0.5 then
        ObjectHideSubObjectPermanently( self, "BODY02", false )
	elseif bodies <= 0.8 then
        ObjectHideSubObjectPermanently( self, "BODY03", false )
     else
        ObjectHideSubObjectPermanently( self, "BODY04", false )
    end
    if flags <= 0.3 then
        ObjectHideSubObjectPermanently( self, "FLAG01", false )
    elseif flags <= 0.6 then
        ObjectHideSubObjectPermanently( self, "FLAG03", false )
     else
        ObjectHideSubObjectPermanently( self, "FLAG03", false )
    end
    if head <= 0.1 then
        ObjectHideSubObjectPermanently( self, "NOHELM01", false )
    elseif head <= 0.2 then
        ObjectHideSubObjectPermanently( self, "NOHELM02", false )
    elseif head <= 0.3 then
        ObjectHideSubObjectPermanently( self, "COIF", false )
    elseif head <= 0.4 then
        ObjectHideSubObjectPermanently( self, "HELM01", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.5 then
        ObjectHideSubObjectPermanently( self, "HELM02", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.65 then
        ObjectHideSubObjectPermanently( self, "HELM03", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.7 then
        ObjectHideSubObjectPermanently( self, "HELM01", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.9 then
        ObjectHideSubObjectPermanently( self, "HELM02", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
     else
        ObjectHideSubObjectPermanently( self, "HELM03", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    end
end

function OnCaveTrollCreated(self)
    ObjectHideSubObjectPermanently( self, "HAMMER1", true )
    ObjectHideSubObjectPermanently( self, "HAMMER2", true )
    ObjectHideSubObjectPermanently( self, "Trunk01", true )
    ObjectHideSubObjectPermanently( self, "GUNHELM", true )
    ObjectHideSubObjectPermanently( self, "GUNGAUNT", true )
end
function OnCaveTrollUsingHammer(self)
    ObjectHideSubObjectPermanently( self, "HAMMER1", false )
    ObjectHideSubObjectPermanently( self, "HAMMER2", true )
    ObjectHideSubObjectPermanently( self, "GUNHELM", true )
    ObjectHideSubObjectPermanently( self, "GUNGAUNT", true )
end 
function OnCaveTrollUsingRockThrow(self)
    ObjectHideSubObjectPermanently( self, "HAMMER1", true )
    ObjectHideSubObjectPermanently( self, "HAMMER2", false )
    ObjectHideSubObjectPermanently( self, "GUNHELM", true )
    ObjectHideSubObjectPermanently( self, "GUNGAUNT", true )
end 

function OnPackWolfCreated(self)
    ObjectGrantUpgrade( self, "Upgrade_GenericUpgrade6" )
end

function OnGundabadBerserkerCreated(self)

    ObjectHideSubObjectPermanently( self, "FORGED_BLADE", true )
    ObjectHideSubObjectPermanently( self, "FORGED_BLADES", true )
    ObjectHideSubObjectPermanently( self, "FORGED_BLADE01", true )
    ObjectHideSubObjectPermanently( self, "FireArowTip", true )
    ObjectHideSubObjectPermanently( self, "HELMET01", true )
    ObjectHideSubObjectPermanently( self, "HELMET02", true )
    ObjectHideSubObjectPermanently( self, "HELMET03", true )	

    local helmet         =    GetRandomNumber()

    if helmet <= 0.33 then
        ObjectHideSubObjectPermanently( self, "HELMET01", false )
    elseif helmet <= 0.66 then
        ObjectHideSubObjectPermanently( self, "HELMET02", false )		
     else
        ObjectHideSubObjectPermanently( self, "HELMET03", false )
    end  
	
end

function OnOrcWarriorsCreated(self)
    ObjectHideSubObjectPermanently( self, "BEARD01", true )
    ObjectHideSubObjectPermanently( self, "BEARD02", true )
    ObjectHideSubObjectPermanently( self, "BEARD03", true )
    ObjectHideSubObjectPermanently( self, "BEARD04", true )
	
    ObjectHideSubObjectPermanently( self, "HAIR01", true )
    ObjectHideSubObjectPermanently( self, "HAIR02", true )
    ObjectHideSubObjectPermanently( self, "HAIR03", true )
	
    ObjectHideSubObjectPermanently( self, "FUR_L", true )
    ObjectHideSubObjectPermanently( self, "FUR_R", true )
	
    ObjectHideSubObjectPermanently( self, "HEAD01", true )
    ObjectHideSubObjectPermanently( self, "HEAD02", true )
    ObjectHideSubObjectPermanently( self, "HEAD03", true )
	
    ObjectHideSubObjectPermanently( self, "CHIPS", true )
    ObjectHideSubObjectPermanently( self, "BODY01", true )
    ObjectHideSubObjectPermanently( self, "BODY02", true )
	
    ObjectHideSubObjectPermanently( self, "HELMET01", true )
    ObjectHideSubObjectPermanently( self, "HELMET02", true )
    ObjectHideSubObjectPermanently( self, "HELMET03", true )

    ObjectHideSubObjectPermanently( self, "FORGED_BLADE", true )
    ObjectHideSubObjectPermanently( self, "FireArowTip", true )

    local helmet         =    GetRandomNumber()
    local hair         =    GetRandomNumber()
    local fur         =    GetRandomNumber()
    local beard         =    GetRandomNumber()
    local head         =    GetRandomNumber()
    local armor          =    GetRandomNumber()
    local chips          =    GetRandomNumber()

    if fur <= 0.3 then
        ObjectHideSubObjectPermanently( self, "FUR_L", false )
    elseif fur <= 0.5 then
        ObjectHideSubObjectPermanently( self, "FUR_R", false )
    elseif fur <= 0.8 then
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
     else
        ObjectHideSubObjectPermanently( self, "FUR_L", false )
        ObjectHideSubObjectPermanently( self, "FUR_R", false )
    end 
	
    if hair <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HAIR01", false )
    elseif hair <= 0.5 then
        ObjectHideSubObjectPermanently( self, "HAIR02", false )
    elseif hair <= 0.8 then
        ObjectHideSubObjectPermanently( self, "HAIR03", false )
     else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end 
	
    if helmet <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HELMET01", false )
    elseif helmet <= 0.5 then
        ObjectHideSubObjectPermanently( self, "HELMET02", false )
     else
        ObjectHideSubObjectPermanently( self, "HELMET03", false )
    end 
	
    if head <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HEAD01", false )
    elseif head <= 0.5 then
        ObjectHideSubObjectPermanently( self, "HEAD02", false )
     else
        ObjectHideSubObjectPermanently( self, "HEAD03", false )
    end 
	
    if armor <= 0.5 then
        ObjectHideSubObjectPermanently( self, "CHIPS", false )
     else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end 
	
    if chips <= 0.5 then
        ObjectHideSubObjectPermanently( self, "BODY01", false )
     else
        ObjectHideSubObjectPermanently( self, "BODY02", false )
    end 

    if beard <= 0.3 then
        ObjectHideSubObjectPermanently( self, "BEARD01", false )
    elseif beard <= 0.5 then
        ObjectHideSubObjectPermanently( self, "BEARD02", false )
    elseif beard <= 0.8 then
        ObjectHideSubObjectPermanently( self, "BEARD03", false )
    elseif beard <= 0.8 then
        ObjectHideSubObjectPermanently( self, "BEARD04", false )
     else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end
end

function OnMountainOrcCreated(self)

    -- hide all weapons
    ObjectHideSubObjectPermanently( self, "WEAPON1", true )
    ObjectHideSubObjectPermanently( self, "WEAPON2", true )
    ObjectHideSubObjectPermanently( self, "WEAPON3", true )
    ObjectHideSubObjectPermanently( self, "WEAPON4", true )
    
    -- hide all cloths

    ObjectHideSubObjectPermanently( self, "CLOTHHOOD1", true )
    ObjectHideSubObjectPermanently( self, "CLOTHHOOD2", true )
    ObjectHideSubObjectPermanently( self, "CLOTHHOOD3", true )
    ObjectHideSubObjectPermanently( self, "CLOTHHOOD4", true )
    
    -- define the locals as random numbers
    local weapon             =    GetRandomNumber()
    local head                 =    GetRandomNumber()
    
    if weapon <= 0.25 then
        ObjectHideSubObjectPermanently( self, "WEAPON1", false )
    elseif weapon <= 0.50 then
        ObjectHideSubObjectPermanently( self, "WEAPON2", false )
    elseif weapon <= 0.75 then
        ObjectHideSubObjectPermanently( self, "WEAPON3", false )
    else 
        ObjectHideSubObjectPermanently( self, "WEAPON4", false )
    end

    if head <= 0.165 then
        ObjectHideSubObjectPermanently( self, "CLOTHHOOD1", false )
    elseif head <= 0.33 then
        ObjectHideSubObjectPermanently( self, "CLOTHHOOD2", false )
    elseif head <= 0.495 then
        ObjectHideSubObjectPermanently( self, "CLOTHHOOD3", false )
    elseif head <= 0.66 then
        ObjectHideSubObjectPermanently( self, "CLOTHHOOD4", false )
    else
        -- do nothing
    end
end

function OnGundabadArcherCreated(self)
    ObjectHideSubObjectPermanently( self, "BEARD01", true )
    ObjectHideSubObjectPermanently( self, "BEARD02", true )
    ObjectHideSubObjectPermanently( self, "BEARD03", true )
    ObjectHideSubObjectPermanently( self, "BEARD04", true )
	
    ObjectHideSubObjectPermanently( self, "HAIR01", true )
    ObjectHideSubObjectPermanently( self, "HAIR02", true )
    ObjectHideSubObjectPermanently( self, "HAIR03", true )
	
    ObjectHideSubObjectPermanently( self, "FUR_L", true )
    ObjectHideSubObjectPermanently( self, "FUR_R", true )
	
    ObjectHideSubObjectPermanently( self, "HEAD01", true )
    ObjectHideSubObjectPermanently( self, "HEAD02", true )
    ObjectHideSubObjectPermanently( self, "HEAD03", true )
	
    ObjectHideSubObjectPermanently( self, "CHIPS", true )
    ObjectHideSubObjectPermanently( self, "BODY01", true )
    ObjectHideSubObjectPermanently( self, "BODY02", true )
	
    ObjectHideSubObjectPermanently( self, "HELMET01", true )
    ObjectHideSubObjectPermanently( self, "HELMET02", true )
    ObjectHideSubObjectPermanently( self, "HELMET03", true )

    ObjectHideSubObjectPermanently( self, "FORGED_BLADE", true )
    ObjectHideSubObjectPermanently( self, "FireArowTip", true )

    local helmet         =    GetRandomNumber()
    local hair         =    GetRandomNumber()
    local fur         =    GetRandomNumber()
    local beard         =    GetRandomNumber()
    local head         =    GetRandomNumber()
    local armor          =    GetRandomNumber()
    local chips          =    GetRandomNumber()

    if fur <= 0.3 then
        ObjectHideSubObjectPermanently( self, "FUR_L", false )
    elseif fur <= 0.5 then
        ObjectHideSubObjectPermanently( self, "FUR_R", false )
    elseif fur <= 0.8 then
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
     else
        ObjectHideSubObjectPermanently( self, "FUR_L", false )
        ObjectHideSubObjectPermanently( self, "FUR_R", false )
    end 
	
    if hair <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HAIR01", false )
    elseif hair <= 0.5 then
        ObjectHideSubObjectPermanently( self, "HAIR02", false )
    elseif hair <= 0.8 then
        ObjectHideSubObjectPermanently( self, "HAIR03", false )
     else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end 
	
    if helmet <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HELMET01", false )
    elseif helmet <= 0.5 then
        ObjectHideSubObjectPermanently( self, "HELMET02", false )
     else
        ObjectHideSubObjectPermanently( self, "HELMET03", false )
    end 
	
    if head <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HEAD01", false )
    elseif head <= 0.5 then
        ObjectHideSubObjectPermanently( self, "HEAD02", false )
     else
        ObjectHideSubObjectPermanently( self, "HEAD03", false )
    end 
	
    if armor <= 0.5 then
        ObjectHideSubObjectPermanently( self, "CHIPS", false )
     else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end 
	
    if chips <= 0.5 then
        ObjectHideSubObjectPermanently( self, "BODY01", false )
     else
        ObjectHideSubObjectPermanently( self, "BODY02", false )
    end 

    if beard <= 0.3 then
        ObjectHideSubObjectPermanently( self, "BEARD01", false )
    elseif beard <= 0.5 then
        ObjectHideSubObjectPermanently( self, "BEARD02", false )
    elseif beard <= 0.8 then
        ObjectHideSubObjectPermanently( self, "BEARD03", false )
    elseif beard <= 0.8 then
        ObjectHideSubObjectPermanently( self, "BEARD04", false )
     else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end
end

-- start of all the scripts that produce fear

function RadiateTerror(self, other)
    ObjectBroadcastEventToEnemies(self, "BeTerrified", 180)
end

function RadiateUncontrollableFearSauron( self )
    ObjectBroadcastEventToEnemies( self, "BeUncontrollablyAfraid", 350 )
    ObjectBroadcastEventToAllies( self, "BeUncontrollablyAfraid", 350 )
end

function RadiateUncontrollableFear( self )
    ObjectBroadcastEventToEnemies( self, "BeUncontrollablyAfraid", 350 )
end

function RadiateBalrogFear(self)
    ObjectBroadcastEventToEnemies(self, "BeAfraidOfBalrog", 250)
end

function RadiatePhialFear( self )
    ObjectBroadcastEventToEnemies( self, "BeAfraidOfPhial", 75 )
end

function RadiateGateDamageFear(self)
    ObjectBroadcastEventToAllies(self, "BeAfraidOfGateDamaged", 200)
end

function GoIntoRampage(self)
    ObjectEnterRampageState(self)
        
    --Broadcast fear to surrounding unit(if we actually rampaged)
    if ObjectTestModelCondition(self, "WEAPONSET_RAMPAGE") then
        ObjectBroadcastEventToUnits(self, "BeAfraidOfRampage", 250)
    end
end

-- start of all the become afraid scripts

function BecomeTerrified(self, other)
    if not ObjectTestCanSufferFear(self) then
        return
    end
    
    ObjectEnterRunAwayPanicState(self, other)
end

function BecomeUncontrollablyAfraid(self, other)
    if not ObjectTestCanSufferFear(self) then
        return
    end

    ObjectEnterUncontrollableCowerState(self, other)
end

function BecomeAfraidOfBalrog(self, other)
    if not ObjectTestCanSufferFear(self) then
        return
    end

    ObjectEnterCowerState(self, other)
end

function BecomeAfraidOfPhial(self,other)
    if not ObjectTestCanSufferFear(self) then
        return
    end
    
    ObjectEnterUncontrollableCowerState(self, other)
end

function BecomeAfraidOfGateDamaged(self, other)
    if not ObjectTestCanSufferFear(self) then
        return
    end

    ObjectEnterCowerState(self,other)
end

function BecomeAfraidOfRampage(self, other)
    if not ObjectTestCanSufferFear(self) then
        return
    end

    ObjectEnterCowerState(self, other)
end

-- start of the fear scripts that are possibly only used in campaign

function GondorFighterBecomeAfraid(self, other)
    if not ObjectTestCanSufferFear(self) then
        return
    end

    ObjectPlaySound(self, "GondorSoldierScream")
    
    -- An object has a 100% chance to become afraid.
    -- An object has a 66% chance to be feared, 33% chance to run away.
    if GetRandomNumber() <= 0.67 then 
        ObjectEnterFearState(self, other, false) -- become afraid of other.
    else --if GetRandomNumber() > 0.67 then
        ObjectEnterRunAwayPanicState(self, other) -- run away.

    end
end

function GondorFighterBecomeAfraidOfGateDamaged(self, other)
    local wasAfraid = ObjectTestModelCondition(self, "EMOTION_AFRAID")

    BecomeAfraidOfGateDamaged(self,other)                 -- Call base function appropriate to many unit types
    
    -- Play unit-specific sound, but only when first entering state (not every time troll sends out fear message!)
    -- BecomeAfraidOfGateDamaged may fail, don't play sound if we didn't enter fear state
    
    if ( not wasAfraid ) and ObjectTestModelCondition(self, "EMOTION_AFRAID") then
        ObjectPlaySound(self, "GondorSoldierScream")    
    end
end

function MordorFighterBecomeUncontrollablyAfraid(self,other)
    local wasAfraid = ObjectTestModelCondition(self, "EMOTION_AFRAID")

    BecomeUncontrollablyAfraid(self,other)                 -- Call base function appropriate to many unit types
    
    -- Play unit-specific sound, but only when first entering state (not every time troll sends out fear message!)
    -- BecomeAfraidOfTroll may fail, don't play sound if we didn't enter fear state
        if ( not wasAfraid ) and ObjectTestModelCondition(self, "EMOTION_AFRAID") then
        ObjectPlaySound(self, "MordorFighterEntFear") 
    end
end

function MordorFighterBecomeAfraidOfPhial(self,other)
    local wasAfraid = ObjectTestModelCondition(self, "EMOTION_AFRAID")

    BecomeUncontrollablyAfraid(self,other)
    -- BecomeAfraidOfTroll(self,other)                 -- Call base function appropriate to many unit types
    
    -- Play unit-specific sound, but only when first entering state (not every time troll sends out fear message!)
    -- BecomeAfraidOfTroll may fail, don't play sound if we didn't enter fear state
--        if ( not wasAfraid ) and ObjectTestModelCondition(self, "EMOTION_AFRAID") then
--            ObjectPlaySound(self, "MordorFighterEntFear") 
--        end
end

function ShelobBecomeAfraidOfPhial(self,other)
    local wasAfraid = ObjectTestModelCondition(self, "EMOTION_AFRAID")

    BecomeUncontrollablyAfraid(self,other)
    -- BecomeAfraidOfTroll(self,other)                 -- Call base function appropriate to many unit types
    
    -- Play unit-specific sound, but only when first entering state (not every time troll sends out fear message!)
    -- BecomeAfraidOfTroll may fail, don't play sound if we didn't enter fear state
--        if ( not wasAfraid ) and ObjectTestModelCondition(self, "EMOTION_AFRAID") then
--            ObjectPlaySound(self, "MordorFighterEntFear") 
--        end
end

function GondorFighterRecoverFromTerror(self)
    -- Add recovery sound
    ObjectPlaySound(self, "GondorSoldierRecoverFromTerror")
end

-- end of all the fear scripts
-- end of all the fear scripts
-- end of all the fear scripts

function NoOp(self, source)
end

function kill(self) -- Kill unit self.
    ExecuteAction("NAMED_KILL", self);
end

function OnMumakilCreated(self)
    ObjectHideSubObjectPermanently( self, "Houda", true )
    ObjectHideSubObjectPermanently( self, "Houda01", true )
end

function OnTrollCreated(self)
    ObjectHideSubObjectPermanently( self, "Trunk01", true )
end

function OnGundabadTrollCreated(self)
	ObjectHideSubObjectPermanently( self, "CLUB", true )
	ObjectHideSubObjectPermanently( self, "HELMET", true )
	ObjectHideSubObjectPermanently( self, "SCYTHES", true )
	ObjectHideSubObjectPermanently( self, "ARMOR", true )
	ObjectHideSubObjectPermanently( self, "PAULDRONS", true )
	-- ObjectGrantUpgrade( self, "Upgrade_SwitchToRockThrowing" )
end

function OnEntCreated(self)
    ObjectHideSubObjectPermanently( self, "ROCK", true )
end

function MakeMeAlert(self)
    ObjectEnterAlertState(self)
end

function BeEnraged(self)
    --Broadcast enraged to surrounding units.
    ObjectBroadcastEventToAllies(self, "BeingEnraged", 500)
end

function BecomeEnraged(self)
    ObjectSetEnragedState(self, true)
end

function StopEnraged(self)
    ObjectSetEnragedState(self, false)
end

function ChantForUnit(self) -- Used by units to broadcast the chant event to their own side.
    ObjectBroadcastEventToAllies(self, "BeginChanting", 9999)
end

function StopChantForUnit(self) -- Used by units to stop the chant event to their own side.
    ObjectBroadcastEventToAllies(self, "StopChanting", 9999)
end

function BeginCheeringForGrond(self)
    ObjectSetChanting(self, true)
end

function StopCheeringForGrond(self)
    ObjectSetChanting(self, false)
end

function OnGondorFighterCreated(self)
	ObjectHideSubObjectPermanently( self, "Forged_Blade", true )
	ObjectHideSubObjectPermanently( self, "Hammer1", true )
	ObjectHideSubObjectPermanently( self, "Glow", true )
	ObjectHideSubObjectPermanently( self, "Glow1", true )
	ObjectHideSubObjectPermanently( self, "HEAD01", true )
    ObjectHideSubObjectPermanently( self, "HEAD02", true )
    ObjectHideSubObjectPermanently( self, "HEAD03", true )
    ObjectHideSubObjectPermanently( self, "BANNER01", true )
    ObjectHideSubObjectPermanently( self, "BANNER02", true )
    ObjectHideSubObjectPermanently( self, "BANNER03", true )
	local banner          =    GetRandomNumber()
	local head          =    GetRandomNumber()
    if head <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HEAD01", false )
    elseif head <= 0.7 then
        ObjectHideSubObjectPermanently( self, "HEAD02", false )
	else
        ObjectHideSubObjectPermanently( self, "HEAD03", false )
    end 

    if banner <= 0.4 then
        ObjectHideSubObjectPermanently( self, "BANNER01", false )
    elseif banner <= 0.8 then
        ObjectHideSubObjectPermanently( self, "BANNER02", false )
	else
        ObjectHideSubObjectPermanently( self, "BANNER03", false )
    end 

end

function OnAragornCreated(self)
    ObjectHideSubObjectPermanently( self, "PLANE02", true )
end

function OnGondorArcherCreated(self)
	-- ObjectHideSubObjectPermanently( self, "arrow", true )		-- This gets hidden pending the art being fixed.  it is the pre-new-archer-firing-pattern arrow
	ObjectHideSubObjectPermanently( self, "FireArowTip", true ) -- This gets hidden because the Fire Arrow upgrade turns it on.
	ObjectHideSubObjectPermanently( self, "HEAD01", true )
    ObjectHideSubObjectPermanently( self, "HEAD02", true )
    ObjectHideSubObjectPermanently( self, "HEAD03", true )
	local head          =    GetRandomNumber()
    if head <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HEAD01", false )
    elseif head <= 0.7 then
        ObjectHideSubObjectPermanently( self, "HEAD02", false )
	else
        ObjectHideSubObjectPermanently( self, "HEAD03", false )
    end  	
end

function OnLegolasCreated(self)
    -- ObjectHideSubObjectPermanently( self, "arrow02", true )        -- This gets hidden pending the art being fixed.  it is the pre-new-archer-firing-pattern arrow
    -- ObjectHideSubObjectPermanently( self, "arrow", true )        -- This gets hidden pending the art being fixed.  it is the pre-new-archer-firing-pattern arrow
end

function SpyMoving(self, other)
    print(ObjectDescription(self).." spying movement of "..ObjectDescription(other));
end

function GandalfConsiderUsingDefensePower(self, other, delay, amount)
    -- Put up the shield if a big attack is coming and we have time to block it
    if tonumber(delay) > 1 then
        if tonumber(amount) >= 100 then
            ObjectDoSpecialPower(self, "SpecialPowerShieldBubble")
            return
        end
    end
    
    -- Or, if we are being hit and there are alot of guys arround, do our cool pushback power
    if tonumber(ObjectCountNearbyEnemies(self, 50)) >= 4 then
        ObjectDoSpecialPower(self, "SpecialPowerTelekeneticPush")
        return
    end
end

function GandalfTriggerWizardBlast(self)
    ObjectCreateAndFireTempWeapon(self, "GandalfWizardBlast")
end

function SarumanConsiderUsingDefensePower(self, other, delay, amount)
    -- Put up the shield if a big attack is coming and we have time to block it
--E4    if tonumber(delay) > 1 then
--E4        if tonumber(amount) >= 25 then
--E4            ObjectDoSpecialPower(self, "SpecialPowerShieldBubble")
--E4            return
--E4        end
--E4    end
    
    -- Or, if we are being hit and there are alot of guys arround, do our cool pushback power
    if tonumber(ObjectCountNearbyEnemies(self, 50)) >= 4 then
        ObjectDoSpecialPower(self, "SpecialPowerTelekeneticPush")
        return
    end
end

function BalrogTriggerBreatheFire(self)
    ObjectCreateAndFireTempWeapon(self, "MordorBalrogBreath")
end

function OnRohirrimArcherCreated(self)
ObjectHideSubObjectPermanently( self, "SHIELD01", true )
	ObjectHideSubObjectPermanently( self, "SHIELD02", true )
	ObjectHideSubObjectPermanently( self, "SHIELD03", true )
	ObjectHideSubObjectPermanently( self, "SHIELD04", true )
	ObjectHideSubObjectPermanently( self, "SHIELD05", true )
	ObjectHideSubObjectPermanently( self, "SHIELD06", true )
	ObjectHideSubObjectPermanently( self, "SHIELD07", true )
	ObjectHideSubObjectPermanently( self, "SHIELD09", true )
	ObjectHideSubObjectPermanently( self, "SHIELD10", true )
	ObjectHideSubObjectPermanently( self, "SHIELD11", true )
	ObjectHideSubObjectPermanently( self, "SHIELD12", true )
	ObjectHideSubObjectPermanently( self, "SHIELD13", true )
	ObjectHideSubObjectPermanently( self, "SHIELD14", true )
	ObjectHideSubObjectPermanently( self, "SHIELD15", true )
	ObjectHideSubObjectPermanently( self, "SHIELD16", true )
	ObjectHideSubObjectPermanently( self, "SHIELD17", true )
	ObjectHideSubObjectPermanently( self, "SHIELD18", true )
	ObjectHideSubObjectPermanently( self, "SHIELD19", true )
	ObjectHideSubObjectPermanently( self, "SHIELD20", true )
	ObjectHideSubObjectPermanently( self, "SHIELD21", true )
	ObjectHideSubObjectPermanently( self, "SHIELD22", true )
	ObjectHideSubObjectPermanently( self, "QUIVERA", true )
	ObjectHideSubObjectPermanently( self, "QUIVERB", true )
	ObjectHideSubObjectPermanently( self, "FireArowTip", true )
    ObjectHideSubObjectPermanently( self, "HORSE01", true )
    ObjectHideSubObjectPermanently( self, "HORSE02", true )
    ObjectHideSubObjectPermanently( self, "HORSE03", true )
    ObjectHideSubObjectPermanently( self, "HORSE04", true )	
	ObjectHideSubObjectPermanently( self, "BODY01", true )
	ObjectHideSubObjectPermanently( self, "BODY02", true )
	ObjectHideSubObjectPermanently( self, "BODY03", true )
	ObjectHideSubObjectPermanently( self, "CLOAK01", true )
	ObjectHideSubObjectPermanently( self, "CLOAK02", true )
	ObjectHideSubObjectPermanently( self, "CLOAK03", true )
	ObjectHideSubObjectPermanently( self, "COIF", true )
	ObjectHideSubObjectPermanently( self, "HELM01", true )
	ObjectHideSubObjectPermanently( self, "HELM02", true )
	ObjectHideSubObjectPermanently( self, "HELM03", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM01", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM02", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM03", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM04", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM05", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM06", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM07", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM08", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM09", true )
	ObjectHideSubObjectPermanently( self, "HELMHEAD01", true )
	ObjectHideSubObjectPermanently( self, "HELMHEAD02", true )
	ObjectHideSubObjectPermanently( self, "NOHELM01", true )
	ObjectHideSubObjectPermanently( self, "NOHELM02", true )
	ObjectHideSubObjectPermanently( self, "LEGS01", true )
	ObjectHideSubObjectPermanently( self, "LEGS02", true )
	ObjectHideSubObjectPermanently( self, "LEGS03", true )

    local horse         =    GetRandomNumber()
    local shield 		=   GetRandomNumber()
    local head 		=   GetRandomNumber()
    local bodies 		=   GetRandomNumber()
    local cloaks 		=   GetRandomNumber()
    local legs 		=   GetRandomNumber()
	
    if bodies <= 0.4 then
        ObjectHideSubObjectPermanently( self, "BODY01", false )
    elseif bodies <= 0.8 then
        ObjectHideSubObjectPermanently( self, "BODY02", false )
     else
        ObjectHideSubObjectPermanently( self, "BODY03", false )
    end
	
    if cloaks <= 0.4 then
        ObjectHideSubObjectPermanently( self, "CLOAK01", false )
    elseif cloaks <= 0.8 then
        ObjectHideSubObjectPermanently( self, "CLOAK03", false )
     else
        ObjectHideSubObjectPermanently( self, "CLOAK02", false )
    end
	
    if legs <= 0.4 then
        ObjectHideSubObjectPermanently( self, "LEGS01", false )
	elseif legs <= 0.8 then
        ObjectHideSubObjectPermanently( self, "LEGS02", false )
     else
        ObjectHideSubObjectPermanently( self, "LEGS03", false )
    end	

    if horse <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HORSE01", false )
    elseif horse <= 0.5 then
        ObjectHideSubObjectPermanently( self, "HORSE02", false )
    elseif horse <= 0.8 then
        ObjectHideSubObjectPermanently( self, "HORSE03", false )
     else
        ObjectHideSubObjectPermanently( self, "HORSE04", false )
    end 
	
    if shield <= 0.1 then
        ObjectHideSubObjectPermanently( self, "SHIELD01", false )
        ObjectHideSubObjectPermanently( self, "QUIVERB", false )
    elseif shield <= 0.12 then
        ObjectHideSubObjectPermanently( self, "SHIELD02", false )
        ObjectHideSubObjectPermanently( self, "QUIVERB", false )
    elseif shield <= 0.16 then
        ObjectHideSubObjectPermanently( self, "SHIELD03", false )
        ObjectHideSubObjectPermanently( self, "QUIVERB", false )
    elseif shield <= 0.20 then
        ObjectHideSubObjectPermanently( self, "SHIELD04", false )
        ObjectHideSubObjectPermanently( self, "QUIVERB", false )
    elseif shield <= 0.24 then
        ObjectHideSubObjectPermanently( self, "SHIELD05", false )
        ObjectHideSubObjectPermanently( self, "QUIVERB", false )
    elseif shield <= 0.32 then
        ObjectHideSubObjectPermanently( self, "SHIELD06", false )
        ObjectHideSubObjectPermanently( self, "QUIVERB", false )
    elseif shield <= 0.36 then
        ObjectHideSubObjectPermanently( self, "SHIELD07", false )
        ObjectHideSubObjectPermanently( self, "QUIVERB", false )
    elseif shield <= 0.42 then
        ObjectHideSubObjectPermanently( self, "SHIELD08", false )
        ObjectHideSubObjectPermanently( self, "QUIVERA", false )
    elseif shield <= 0.48 then
        ObjectHideSubObjectPermanently( self, "SHIELD09", false )
        ObjectHideSubObjectPermanently( self, "QUIVERA", false )
    elseif shield <= 0.52 then
        ObjectHideSubObjectPermanently( self, "SHIELD10", false )
        ObjectHideSubObjectPermanently( self, "QUIVERA", false )
    elseif shield <= 0.56 then
        ObjectHideSubObjectPermanently( self, "SHIELD11", false )
        ObjectHideSubObjectPermanently( self, "QUIVERA", false )
    elseif shield <= 0.62 then
        ObjectHideSubObjectPermanently( self, "SHIELD12", false )
        ObjectHideSubObjectPermanently( self, "QUIVERA", false )
    elseif shield <= 0.68 then
        ObjectHideSubObjectPermanently( self, "SHIELD13", false )
        ObjectHideSubObjectPermanently( self, "QUIVERA", false )
    elseif shield <= 0.72 then
        ObjectHideSubObjectPermanently( self, "SHIELD14", false )
        ObjectHideSubObjectPermanently( self, "QUIVERA", false )
    elseif shield <= 0.78 then
        ObjectHideSubObjectPermanently( self, "SHIELD15", false )
        ObjectHideSubObjectPermanently( self, "QUIVERA", false )
    elseif shield <= 0.84 then
        ObjectHideSubObjectPermanently( self, "SHIELD16", false )
        ObjectHideSubObjectPermanently( self, "QUIVERA", false )
    elseif shield <= 0.86 then
        ObjectHideSubObjectPermanently( self, "SHIELD17", false )
        ObjectHideSubObjectPermanently( self, "QUIVERA", false )
    elseif shield <= 0.88 then
        ObjectHideSubObjectPermanently( self, "SHIELD18", false )
        ObjectHideSubObjectPermanently( self, "QUIVERA", false )
    elseif shield <= 0.92 then
        ObjectHideSubObjectPermanently( self, "SHIELD19", false )
        ObjectHideSubObjectPermanently( self, "QUIVERA", false )
	elseif shield <= 0.96 then
        ObjectHideSubObjectPermanently( self, "SHIELD20", false )
        ObjectHideSubObjectPermanently( self, "QUIVERA", false )
    elseif shield <= 0.99 then
        ObjectHideSubObjectPermanently( self, "SHIELD21", false )
        ObjectHideSubObjectPermanently( self, "QUIVERA", false )
     else
        ObjectHideSubObjectPermanently( self, "SHIELD22", false )
        ObjectHideSubObjectPermanently( self, "QUIVERA", false )
    end
	
    if head <= 0.10 then
        ObjectHideSubObjectPermanently( self, "NOHELM01", false )
    elseif head <= 0.15 then
        ObjectHideSubObjectPermanently( self, "NOHELM02", false )
    elseif head <= 0.20 then
        ObjectHideSubObjectPermanently( self, "COIF", false )
    elseif head <= 0.25 then
        ObjectHideSubObjectPermanently( self, "NEWHELM01", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.30 then
        ObjectHideSubObjectPermanently( self, "NEWHELM02", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.35 then
        ObjectHideSubObjectPermanently( self, "NEWHELM03", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.40 then
        ObjectHideSubObjectPermanently( self, "NEWHELM04", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.45 then
        ObjectHideSubObjectPermanently( self, "NEWHELM05", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.50 then
        ObjectHideSubObjectPermanently( self, "NEWHELM06", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.55 then
        ObjectHideSubObjectPermanently( self, "NEWHELM07", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.58 then
        ObjectHideSubObjectPermanently( self, "NEWHELM08", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.60 then
        ObjectHideSubObjectPermanently( self, "NEWHELM09", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.65 then
        ObjectHideSubObjectPermanently( self, "NEWHELM01", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.70 then
        ObjectHideSubObjectPermanently( self, "NEWHELM02", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.75 then
        ObjectHideSubObjectPermanently( self, "NEWHELM04", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.80 then
        ObjectHideSubObjectPermanently( self, "NEWHELM05", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.85 then
        ObjectHideSubObjectPermanently( self, "NEWHELM06", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.90 then
        ObjectHideSubObjectPermanently( self, "NEWHELM07", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.95 then
        ObjectHideSubObjectPermanently( self, "NEWHELM08", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.99 then
        ObjectHideSubObjectPermanently( self, "NEWHELM09", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
	else
        ObjectHideSubObjectPermanently( self, "NEWHELM03", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    end
end

function OnRohirrimCreated(self)
    ObjectHideSubObjectPermanently( self, "Forged_BladeA", true )
	ObjectHideSubObjectPermanently( self, "Forged_BladeB", true )
	ObjectHideSubObjectPermanently( self, "Forged_BladeC", true )
	ObjectHideSubObjectPermanently( self, "SHIELD01", true )
	ObjectHideSubObjectPermanently( self, "SHIELD02", true )
	ObjectHideSubObjectPermanently( self, "SHIELD03", true )
	ObjectHideSubObjectPermanently( self, "SHIELD04", true )
	ObjectHideSubObjectPermanently( self, "SHIELD05", true )
	ObjectHideSubObjectPermanently( self, "SHIELD06", true )
	ObjectHideSubObjectPermanently( self, "SHIELD07", true )
	ObjectHideSubObjectPermanently( self, "FireArowTip", true )
    ObjectHideSubObjectPermanently( self, "HORSE01", true )
    ObjectHideSubObjectPermanently( self, "HORSE02", true )
    ObjectHideSubObjectPermanently( self, "HORSE03", true )
    ObjectHideSubObjectPermanently( self, "HORSE04", true )	
	ObjectHideSubObjectPermanently( self, "BODY01", true )
	ObjectHideSubObjectPermanently( self, "BODY02", true )
	ObjectHideSubObjectPermanently( self, "BODY03", true )
	ObjectHideSubObjectPermanently( self, "CLOAK01", true )
	ObjectHideSubObjectPermanently( self, "CLOAK02", true )
	ObjectHideSubObjectPermanently( self, "CLOAK03", true )
	ObjectHideSubObjectPermanently( self, "COIF", true )
	ObjectHideSubObjectPermanently( self, "HELM01", true )
	ObjectHideSubObjectPermanently( self, "HELM02", true )
	ObjectHideSubObjectPermanently( self, "HELM03", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM01", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM02", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM03", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM04", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM05", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM06", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM07", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM08", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM09", true )
	ObjectHideSubObjectPermanently( self, "HELMHEAD01", true )
	ObjectHideSubObjectPermanently( self, "HELMHEAD02", true )
	ObjectHideSubObjectPermanently( self, "NOHELM01", true )
	ObjectHideSubObjectPermanently( self, "NOHELM02", true )
	ObjectHideSubObjectPermanently( self, "LEGS01", true )
	ObjectHideSubObjectPermanently( self, "LEGS02", true )
	ObjectHideSubObjectPermanently( self, "LEGS03", true )

    local horse         =    GetRandomNumber()
    local shield 		=   GetRandomNumber()
    local head 		=   GetRandomNumber()
    local bodies 		=   GetRandomNumber()
    local cloaks 		=   GetRandomNumber()
    local legs 		=   GetRandomNumber()
	
    if bodies <= 0.4 then
        ObjectHideSubObjectPermanently( self, "BODY01", false )
    elseif bodies <= 0.8 then
        ObjectHideSubObjectPermanently( self, "BODY02", false )
     else
        ObjectHideSubObjectPermanently( self, "BODY03", false )
    end
	
    if cloaks <= 0.4 then
        ObjectHideSubObjectPermanently( self, "CLOAK01", false )
    elseif cloaks <= 0.8 then
        ObjectHideSubObjectPermanently( self, "CLOAK03", false )
     else
        ObjectHideSubObjectPermanently( self, "CLOAK02", false )
    end
	
    if legs <= 0.4 then
        ObjectHideSubObjectPermanently( self, "LEGS01", false )
	elseif legs <= 0.8 then
        ObjectHideSubObjectPermanently( self, "LEGS02", false )
     else
        ObjectHideSubObjectPermanently( self, "LEGS03", false )
    end	

    if horse <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HORSE01", false )
    elseif horse <= 0.5 then
        ObjectHideSubObjectPermanently( self, "HORSE02", false )
    elseif horse <= 0.8 then
        ObjectHideSubObjectPermanently( self, "HORSE03", false )
     else
        ObjectHideSubObjectPermanently( self, "HORSE04", false )
    end 
	
    if shield <= 0.1 then
        ObjectHideSubObjectPermanently( self, "SHIELD01", false )
    elseif shield <= 0.3 then
        ObjectHideSubObjectPermanently( self, "SHIELD02", false )
    elseif shield <= 0.4 then
        ObjectHideSubObjectPermanently( self, "SHIELD03", false )
    elseif shield <= 0.5 then
        ObjectHideSubObjectPermanently( self, "SHIELD04", false )
    elseif shield <= 0.7 then
        ObjectHideSubObjectPermanently( self, "SHIELD05", false )
    elseif shield <= 0.9 then
        ObjectHideSubObjectPermanently( self, "SHIELD06", false )
     else
        ObjectHideSubObjectPermanently( self, "SHIELD07", false )
    end
	
    if head <= 0.10 then
        ObjectHideSubObjectPermanently( self, "NOHELM01", false )
    elseif head <= 0.15 then
        ObjectHideSubObjectPermanently( self, "NOHELM02", false )
    elseif head <= 0.20 then
        ObjectHideSubObjectPermanently( self, "COIF", false )
    elseif head <= 0.25 then
        ObjectHideSubObjectPermanently( self, "NEWHELM01", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.30 then
        ObjectHideSubObjectPermanently( self, "NEWHELM02", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.35 then
        ObjectHideSubObjectPermanently( self, "NEWHELM03", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.40 then
        ObjectHideSubObjectPermanently( self, "NEWHELM04", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.45 then
        ObjectHideSubObjectPermanently( self, "NEWHELM05", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.50 then
        ObjectHideSubObjectPermanently( self, "NEWHELM06", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.55 then
        ObjectHideSubObjectPermanently( self, "NEWHELM07", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.58 then
        ObjectHideSubObjectPermanently( self, "NEWHELM08", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.60 then
        ObjectHideSubObjectPermanently( self, "NEWHELM09", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.65 then
        ObjectHideSubObjectPermanently( self, "NEWHELM01", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.70 then
        ObjectHideSubObjectPermanently( self, "NEWHELM02", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.75 then
        ObjectHideSubObjectPermanently( self, "NEWHELM04", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.80 then
        ObjectHideSubObjectPermanently( self, "NEWHELM05", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.85 then
        ObjectHideSubObjectPermanently( self, "NEWHELM06", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.90 then
        ObjectHideSubObjectPermanently( self, "NEWHELM07", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.95 then
        ObjectHideSubObjectPermanently( self, "NEWHELM08", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.99 then
        ObjectHideSubObjectPermanently( self, "NEWHELM09", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
	else
        ObjectHideSubObjectPermanently( self, "NEWHELM03", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    end
    
end

function OnSummonedRohirrimCreated(self)
    ObjectGrantUpgrade( self, "Upgrade_RohanHorseShield" )
    ObjectHideSubObjectPermanently( self, "Forged_BladeA", true )
	ObjectHideSubObjectPermanently( self, "Forged_BladeB", true )
	ObjectHideSubObjectPermanently( self, "Forged_BladeC", true )
	ObjectHideSubObjectPermanently( self, "SHIELD01", true )
	ObjectHideSubObjectPermanently( self, "SHIELD02", true )
	ObjectHideSubObjectPermanently( self, "SHIELD03", true )
	ObjectHideSubObjectPermanently( self, "SHIELD04", true )
	ObjectHideSubObjectPermanently( self, "SHIELD05", true )
	ObjectHideSubObjectPermanently( self, "SHIELD06", true )
	ObjectHideSubObjectPermanently( self, "SHIELD07", true )
	ObjectHideSubObjectPermanently( self, "FireArowTip", true )
    ObjectHideSubObjectPermanently( self, "HORSE01", true )
    ObjectHideSubObjectPermanently( self, "HORSE02", true )
    ObjectHideSubObjectPermanently( self, "HORSE03", true )
    ObjectHideSubObjectPermanently( self, "HORSE04", true )	
	ObjectHideSubObjectPermanently( self, "BODY01", true )
	ObjectHideSubObjectPermanently( self, "BODY02", true )
	ObjectHideSubObjectPermanently( self, "BODY03", true )
	ObjectHideSubObjectPermanently( self, "CLOAK01", true )
	ObjectHideSubObjectPermanently( self, "CLOAK02", true )
	ObjectHideSubObjectPermanently( self, "CLOAK03", true )
	ObjectHideSubObjectPermanently( self, "COIF", true )
	ObjectHideSubObjectPermanently( self, "HELM01", true )
	ObjectHideSubObjectPermanently( self, "HELM02", true )
	ObjectHideSubObjectPermanently( self, "HELM03", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM01", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM02", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM03", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM04", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM05", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM06", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM07", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM08", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM09", true )
	ObjectHideSubObjectPermanently( self, "HELMHEAD01", true )
	ObjectHideSubObjectPermanently( self, "HELMHEAD02", true )
	ObjectHideSubObjectPermanently( self, "NOHELM01", true )
	ObjectHideSubObjectPermanently( self, "NOHELM02", true )
	ObjectHideSubObjectPermanently( self, "LEGS01", true )
	ObjectHideSubObjectPermanently( self, "LEGS02", true )
	ObjectHideSubObjectPermanently( self, "LEGS03", true )

    local horse         =    GetRandomNumber()
    local shield 		=   GetRandomNumber()
    local head 		=   GetRandomNumber()
    local bodies 		=   GetRandomNumber()
    local cloaks 		=   GetRandomNumber()
    local legs 		=   GetRandomNumber()
	
    if bodies <= 0.4 then
        ObjectHideSubObjectPermanently( self, "BODY01", false )
    elseif bodies <= 0.8 then
        ObjectHideSubObjectPermanently( self, "BODY02", false )
     else
        ObjectHideSubObjectPermanently( self, "BODY03", false )
    end
	
    if cloaks <= 0.4 then
        ObjectHideSubObjectPermanently( self, "CLOAK01", false )
    elseif cloaks <= 0.8 then
        ObjectHideSubObjectPermanently( self, "CLOAK03", false )
     else
        ObjectHideSubObjectPermanently( self, "CLOAK02", false )
    end
	
    if legs <= 0.4 then
        ObjectHideSubObjectPermanently( self, "LEGS01", false )
	elseif legs <= 0.8 then
        ObjectHideSubObjectPermanently( self, "LEGS02", false )
     else
        ObjectHideSubObjectPermanently( self, "LEGS03", false )
    end	

    if horse <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HORSE01", false )
    elseif horse <= 0.5 then
        ObjectHideSubObjectPermanently( self, "HORSE02", false )
    elseif horse <= 0.8 then
        ObjectHideSubObjectPermanently( self, "HORSE03", false )
     else
        ObjectHideSubObjectPermanently( self, "HORSE04", false )
    end 
	
    if shield <= 0.1 then
        ObjectHideSubObjectPermanently( self, "SHIELD01", false )
    elseif shield <= 0.3 then
        ObjectHideSubObjectPermanently( self, "SHIELD02", false )
    elseif shield <= 0.4 then
        ObjectHideSubObjectPermanently( self, "SHIELD03", false )
    elseif shield <= 0.5 then
        ObjectHideSubObjectPermanently( self, "SHIELD04", false )
    elseif shield <= 0.7 then
        ObjectHideSubObjectPermanently( self, "SHIELD05", false )
    elseif shield <= 0.9 then
        ObjectHideSubObjectPermanently( self, "SHIELD06", false )
     else
        ObjectHideSubObjectPermanently( self, "SHIELD07", false )
    end
	
    if head <= 0.10 then
        ObjectHideSubObjectPermanently( self, "NOHELM01", false )
    elseif head <= 0.15 then
        ObjectHideSubObjectPermanently( self, "NOHELM02", false )
    elseif head <= 0.20 then
        ObjectHideSubObjectPermanently( self, "COIF", false )
    elseif head <= 0.25 then
        ObjectHideSubObjectPermanently( self, "NEWHELM01", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.30 then
        ObjectHideSubObjectPermanently( self, "NEWHELM02", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.35 then
        ObjectHideSubObjectPermanently( self, "NEWHELM03", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.40 then
        ObjectHideSubObjectPermanently( self, "NEWHELM04", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.45 then
        ObjectHideSubObjectPermanently( self, "NEWHELM05", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.50 then
        ObjectHideSubObjectPermanently( self, "NEWHELM06", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.55 then
        ObjectHideSubObjectPermanently( self, "NEWHELM07", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.58 then
        ObjectHideSubObjectPermanently( self, "NEWHELM08", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.60 then
        ObjectHideSubObjectPermanently( self, "NEWHELM09", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.65 then
        ObjectHideSubObjectPermanently( self, "NEWHELM01", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.70 then
        ObjectHideSubObjectPermanently( self, "NEWHELM02", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.75 then
        ObjectHideSubObjectPermanently( self, "NEWHELM04", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.80 then
        ObjectHideSubObjectPermanently( self, "NEWHELM05", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.85 then
        ObjectHideSubObjectPermanently( self, "NEWHELM06", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.90 then
        ObjectHideSubObjectPermanently( self, "NEWHELM07", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.95 then
        ObjectHideSubObjectPermanently( self, "NEWHELM08", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.99 then
        ObjectHideSubObjectPermanently( self, "NEWHELM09", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
	else
        ObjectHideSubObjectPermanently( self, "NEWHELM03", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    end
end

function OnRohirrimBannerCreated(self)
	ObjectHideSubObjectPermanently( self, "Forged_BladeA", true )
	ObjectHideSubObjectPermanently( self, "Forged_BladeB", true )
	ObjectHideSubObjectPermanently( self, "Forged_BladeC", true )
	ObjectHideSubObjectPermanently( self, "SHIELD01", true )
	ObjectHideSubObjectPermanently( self, "SHIELD02", true )
	ObjectHideSubObjectPermanently( self, "SHIELD03", true )
	ObjectHideSubObjectPermanently( self, "SHIELD04", true )
	ObjectHideSubObjectPermanently( self, "SHIELD05", true )
	ObjectHideSubObjectPermanently( self, "SHIELD06", true )
	ObjectHideSubObjectPermanently( self, "SHIELD07", true )
	ObjectHideSubObjectPermanently( self, "FireArowTip", true )
    ObjectHideSubObjectPermanently( self, "HORSE01", true )
    ObjectHideSubObjectPermanently( self, "HORSE02", true )
    ObjectHideSubObjectPermanently( self, "HORSE03", true )
    ObjectHideSubObjectPermanently( self, "HORSE04", true )	
	ObjectHideSubObjectPermanently( self, "BODY01", true )
	ObjectHideSubObjectPermanently( self, "BODY02", true )
	ObjectHideSubObjectPermanently( self, "BODY03", true )
	ObjectHideSubObjectPermanently( self, "CLOAK01", true )
	ObjectHideSubObjectPermanently( self, "CLOAK02", true )
	ObjectHideSubObjectPermanently( self, "CLOAK03", true )
	ObjectHideSubObjectPermanently( self, "COIF", true )
	ObjectHideSubObjectPermanently( self, "HELM01", true )
	ObjectHideSubObjectPermanently( self, "HELM02", true )
	ObjectHideSubObjectPermanently( self, "HELM03", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM01", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM02", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM03", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM04", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM05", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM06", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM07", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM08", true )
	ObjectHideSubObjectPermanently( self, "NEWHELM09", true )
	ObjectHideSubObjectPermanently( self, "HELMHEAD01", true )
	ObjectHideSubObjectPermanently( self, "HELMHEAD02", true )
	ObjectHideSubObjectPermanently( self, "NOHELM01", true )
	ObjectHideSubObjectPermanently( self, "NOHELM02", true )
	ObjectHideSubObjectPermanently( self, "LEGS01", true )
	ObjectHideSubObjectPermanently( self, "LEGS02", true )
	ObjectHideSubObjectPermanently( self, "LEGS03", true )
	ObjectHideSubObjectPermanently( self, "FLAG01", true )
	ObjectHideSubObjectPermanently( self, "FLAG02", true )
	ObjectHideSubObjectPermanently( self, "FLAG03", true )	

    local horse         =    GetRandomNumber()
    local shield 		=   GetRandomNumber()
    local head 		=   GetRandomNumber()
    local bodies 		=   GetRandomNumber()
    local cloaks 		=   GetRandomNumber()
    local legs 		=   GetRandomNumber()
    local flags 		=   GetRandomNumber()	
	
    if flags <= 0.3 then
        ObjectHideSubObjectPermanently( self, "FLAG01", false )
    elseif flags <= 0.6 then
        ObjectHideSubObjectPermanently( self, "FLAG03", false )
     else
        ObjectHideSubObjectPermanently( self, "FLAG03", false )
    end
	
    if bodies <= 0.4 then
        ObjectHideSubObjectPermanently( self, "BODY01", false )
    elseif bodies <= 0.8 then
        ObjectHideSubObjectPermanently( self, "BODY02", false )
     else
        ObjectHideSubObjectPermanently( self, "BODY03", false )
    end
	
    if cloaks <= 0.4 then
        ObjectHideSubObjectPermanently( self, "CLOAK01", false )
    elseif cloaks <= 0.8 then
        ObjectHideSubObjectPermanently( self, "CLOAK03", false )
     else
        ObjectHideSubObjectPermanently( self, "CLOAK02", false )
    end
	
    if legs <= 0.4 then
        ObjectHideSubObjectPermanently( self, "LEGS01", false )
	elseif legs <= 0.8 then
        ObjectHideSubObjectPermanently( self, "LEGS02", false )
     else
        ObjectHideSubObjectPermanently( self, "LEGS03", false )
    end	

    if horse <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HORSE01", false )
    elseif horse <= 0.5 then
        ObjectHideSubObjectPermanently( self, "HORSE02", false )
    elseif horse <= 0.8 then
        ObjectHideSubObjectPermanently( self, "HORSE03", false )
     else
        ObjectHideSubObjectPermanently( self, "HORSE04", false )
    end 
	
    if shield <= 0.1 then
        ObjectHideSubObjectPermanently( self, "SHIELD01", false )
    elseif shield <= 0.3 then
        ObjectHideSubObjectPermanently( self, "SHIELD02", false )
    elseif shield <= 0.4 then
        ObjectHideSubObjectPermanently( self, "SHIELD03", false )
    elseif shield <= 0.5 then
        ObjectHideSubObjectPermanently( self, "SHIELD04", false )
    elseif shield <= 0.7 then
        ObjectHideSubObjectPermanently( self, "SHIELD05", false )
    elseif shield <= 0.9 then
        ObjectHideSubObjectPermanently( self, "SHIELD06", false )
     else
        ObjectHideSubObjectPermanently( self, "SHIELD07", false )
    end
	
    if head <= 0.10 then
        ObjectHideSubObjectPermanently( self, "NOHELM01", false )
    elseif head <= 0.15 then
        ObjectHideSubObjectPermanently( self, "NOHELM02", false )
    elseif head <= 0.20 then
        ObjectHideSubObjectPermanently( self, "COIF", false )
    elseif head <= 0.25 then
        ObjectHideSubObjectPermanently( self, "NEWHELM01", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.30 then
        ObjectHideSubObjectPermanently( self, "NEWHELM02", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.35 then
        ObjectHideSubObjectPermanently( self, "NEWHELM03", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.40 then
        ObjectHideSubObjectPermanently( self, "NEWHELM04", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.45 then
        ObjectHideSubObjectPermanently( self, "NEWHELM05", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.50 then
        ObjectHideSubObjectPermanently( self, "NEWHELM06", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.55 then
        ObjectHideSubObjectPermanently( self, "NEWHELM07", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.58 then
        ObjectHideSubObjectPermanently( self, "NEWHELM08", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.60 then
        ObjectHideSubObjectPermanently( self, "NEWHELM09", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD01", false )
    elseif head <= 0.65 then
        ObjectHideSubObjectPermanently( self, "NEWHELM01", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.70 then
        ObjectHideSubObjectPermanently( self, "NEWHELM02", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.75 then
        ObjectHideSubObjectPermanently( self, "NEWHELM04", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.80 then
        ObjectHideSubObjectPermanently( self, "NEWHELM05", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.85 then
        ObjectHideSubObjectPermanently( self, "NEWHELM06", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.90 then
        ObjectHideSubObjectPermanently( self, "NEWHELM07", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.95 then
        ObjectHideSubObjectPermanently( self, "NEWHELM08", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    elseif head <= 0.99 then
        ObjectHideSubObjectPermanently( self, "NEWHELM09", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
	else
        ObjectHideSubObjectPermanently( self, "NEWHELM03", false )
        ObjectHideSubObjectPermanently( self, "HELMHEAD02", false )
    end
end

function OnGondorCavalryCreated(self)
	ObjectHideSubObjectPermanently( self, "Forged_Blade", true )
	ObjectHideSubObjectPermanently( self, "HIPS", true )
	ObjectHideSubObjectPermanently( self, "SPAULDERS", true )
	ObjectHideSubObjectPermanently( self, "SHIELD", true )	

    ObjectHideSubObjectPermanently( self, "HEAD01", true )
    ObjectHideSubObjectPermanently( self, "HEAD02", true )
    ObjectHideSubObjectPermanently( self, "HEAD03", true )
    ObjectHideSubObjectPermanently( self, "HORSE01", true )
    ObjectHideSubObjectPermanently( self, "HORSE02", true )
    ObjectHideSubObjectPermanently( self, "HORSE03", true )
    ObjectHideSubObjectPermanently( self, "HORSE04", true )

    local horse         =    GetRandomNumber()
    local head 		=   GetRandomNumber()

    if horse <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HORSE01", false )
    elseif horse <= 0.6 then
        ObjectHideSubObjectPermanently( self, "HORSE02", false )
    elseif horse <= 0.8 then
        ObjectHideSubObjectPermanently( self, "HORSE03", false )
     else
        ObjectHideSubObjectPermanently( self, "HORSE04", false )
    end 

    if head <= 0.33 then
        ObjectHideSubObjectPermanently( self, "HEAD01", false )
    elseif head <= 0.66 then
        ObjectHideSubObjectPermanently( self, "HEAD02", false )
     else
        ObjectHideSubObjectPermanently( self, "HEAD03", false )
    end 
end

function OnCatapultCreated(self)
    --ObjectHideSubObjectPermanently( self, "PROJECTILEROCK", true )
    ObjectHideSubObjectPermanently( self, "FIREPLANE", true )
end

function OnTrebuchetCreated(self)
	ObjectHideSubObjectPermanently( self, "FIREPLANE", true )
	ObjectHideSubObjectPermanently( self, "HEAD01", true )
    ObjectHideSubObjectPermanently( self, "HEAD02", true )
    ObjectHideSubObjectPermanently( self, "HEAD03", true )
	local head          =    GetRandomNumber()
    if head <= 0.3 then
        ObjectHideSubObjectPermanently( self, "HEAD01", false )
    elseif head <= 0.7 then
        ObjectHideSubObjectPermanently( self, "HEAD02", false )
	else
        ObjectHideSubObjectPermanently( self, "HEAD03", false )
    end    
end

function OnPorterCreated(self)
    ObjectHideSubObjectPermanently( self, "ARROWS", true )
    ObjectHideSubObjectPermanently( self, "BRAZIER", true )
    ObjectHideSubObjectPermanently( self, "BOWS", true )
    ObjectHideSubObjectPermanently( self, "TREBUCHET_FIRE", true )
    ObjectHideSubObjectPermanently( self, "SWORDS", true )
    ObjectHideSubObjectPermanently( self, "SHIELDS", true )
    ObjectHideSubObjectPermanently( self, "ARMOR", true )
    ObjectHideSubObjectPermanently( self, "BANNERS", true )
end

function OnOrcPorterCreated(self)
    ObjectHideSubObjectPermanently( self, "Forged_Blade", true )
    ObjectHideSubObjectPermanently( self, "SWORD_UPGRADES", true )
    ObjectHideSubObjectPermanently( self, "ARROW_UPGRADE", true )
    ObjectHideSubObjectPermanently( self, "ARMOR_UPGRADE", true )
    ObjectHideSubObjectPermanently( self, "GOLD", true )
    ObjectHideSubObjectPermanently( self, "FireArowTip", true )
end

function OnPeasantCreated(self)
    ObjectHideSubObjectPermanently( self, "HELMET", true )
    ObjectHideSubObjectPermanently( self, "SWORD", true )
    ObjectHideSubObjectPermanently( self, "COIF", true )
    ObjectHideSubObjectPermanently( self, "FB", true )
    ObjectHideSubObjectPermanently( self, "SHIELD", true )
    ObjectHideSubObjectPermanently( self, "Broom", true )
end

function OnMordorSauronCreated(self)
    --ObjectDoSpecialPower( self, "SuperweaponGothmogOrcs" )
end

function OnIsengardDunlandCreated(self)
    ObjectHideSubObjectPermanently( self, "HEAVY", true )
    ObjectHideSubObjectPermanently( self, "TORCH", true )
    
    -- helmet types
    ObjectHideSubObjectPermanently( self, "HEAD1", true )
    ObjectHideSubObjectPermanently( self, "HEAD2", true )
    ObjectHideSubObjectPermanently( self, "HEAD3", true )
    ObjectHideSubObjectPermanently( self, "HEAD4", true )
    
    local helm = GetRandomNumber()
    
    if helm <= 0.25 then
        ObjectHideSubObjectPermanently( self, "HEAD1", false )
        elseif helm <= 0.50 then
          ObjectHideSubObjectPermanently( self, "HEAD2", false )
    elseif helm <= 0.75 then
        ObjectHideSubObjectPermanently( self, "HEAD3", false )
    else
        ObjectHideSubObjectPermanently( self, "HEAD4", false )
    end
end

function OnElvenWarriorCreated(self)
    ObjectHideSubObject( self, "ARROW", true )
    ObjectHideSubObject( self, "ARROWNOCK", true )
    ObjectHideSubObjectPermanently( self, "Forged_Blade", true )
    ObjectHideSubObjectPermanently( self, "FIREAROWTIP", true )
end

function OnIsengardArcherCreated(self)
    ObjectHideSubObject( self, "ARROWNOCK", true )
    ObjectHideSubObjectPermanently( self, "FIREAROWTIP", true )
end

function OnGarrisonableCreated(self)
    ObjectHideSubObjectPermanently( self, "GARRISON01", true )
    ObjectHideSubObjectPermanently( self, "GARRISON02", true )
end