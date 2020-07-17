-- define lua functions
function EvilHeroSpawnFX(self)
    ObjectCreateAndFireTempWeapon(self, "EvilHeroSpawnFX")
end
 
function OnArmoryCreated(self)
	ObjectGrantUpgrade( self, "Upgrade_TechnologyIsengardPortableMines" )
end

function OnFireSpecialActivation(self)
    ObjectDoSpecialPower( self, "SpecialAbilityFireArrowVolley" )
    ObjectHideSubObjectPermanently( self, "FIREAROWTIP", false )
end

function OnFireSpecialStop(self)
    ObjectHideSubObjectPermanently( self, "FIREAROWTIP", true )
end

function OnFireSpecialActivationRanger(self)
    ObjectDoSpecialPower( self, "SpecialAbilityRank2" )
    ObjectHideSubObjectPermanently( self, "FIREAROWTIP", false )
end

function OnFireSpecialStopRanger(self)
    ObjectHideSubObjectPermanently( self, "FIREAROWTIP", true )
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

function OnRohanSpearmenCreated(self)
    ObjectHideSubObjectPermanently( self, "FORGED_SPEAR", true )
    
    -- helmet types
    ObjectHideSubObjectPermanently( self, "HEAD1", true )
    ObjectHideSubObjectPermanently( self, "HEAD2", true )
    ObjectHideSubObjectPermanently( self, "HEAD3", true )
    ObjectHideSubObjectPermanently( self, "HEAD4", true )
    ObjectHideSubObjectPermanently( self, "HEAD5", true )
    
    -- shield types
    ObjectHideSubObjectPermanently( self, "SHIELD01", true )
    
    local helm = GetRandomNumber()
    local shield = GetRandomNumber()
    
    if helm <= 0.25 then
        ObjectHideSubObjectPermanently( self, "HEAD1", false )
--    elseif helm <= 0.40 then
--        ObjectHideSubObjectPermanently( self, "HEAD2", false )
    elseif helm <= 0.50 then
        ObjectHideSubObjectPermanently( self, "HEAD3", false )
    elseif helm <= 0.75 then
        ObjectHideSubObjectPermanently( self, "HEAD4", false )
    else
        ObjectHideSubObjectPermanently( self, "HEAD5", false )
    end
    
    if shield <= 0.55 then
        ObjectHideSubObjectPermanently( self, "SHIELD01", false )
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
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
    ObjectHideSubObjectPermanently( self, "THEODENHA", true )
    ObjectHideSubObjectPermanently( self, "BRACERS", true )
    ObjectHideSubObjectPermanently( self, "GREAVES", true )
    ObjectHideSubObjectPermanently( self, "PAULDRONS", true )
    ObjectHideSubObjectPermanently( self, "HELMET", true )
end

function OnRohanArcherCreated(self)
    ObjectHideSubObjectPermanently( self, "FIREAROWTIP", true ) -- yes, it's a typo in the art.
    -- helmet types
    ObjectHideSubObjectPermanently( self, "HEAD1", true )
    ObjectHideSubObjectPermanently( self, "HEAD2", true )
    ObjectHideSubObjectPermanently( self, "HEAD3", true )
    ObjectHideSubObjectPermanently( self, "HEAD4", true )
    ObjectHideSubObjectPermanently( self, "HEAD5", true )
    
    -- shield types
    ObjectHideSubObjectPermanently( self, "SHIELD01", true )
    
    local helm = GetRandomNumber()
    local shield = GetRandomNumber()
    
    if helm <= 0.25 then
        ObjectHideSubObjectPermanently( self, "HEAD1", false )
--    elseif helm <= 0.40 then
--        ObjectHideSubObjectPermanently( self, "HEAD2", false )
    elseif helm <= 0.50 then
        ObjectHideSubObjectPermanently( self, "HEAD3", false )
    elseif helm <= 0.75 then
        ObjectHideSubObjectPermanently( self, "HEAD4", false )
    else
        ObjectHideSubObjectPermanently( self, "HEAD5", false )
    end
    
    if shield <= 0.55 then
        ObjectHideSubObjectPermanently( self, "SHIELD01", false )
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end
end

function OnIsengardFighterCreated(self)
    ObjectHideSubObjectPermanently( self, "Forged_Blade", true )
    ObjectHideSubObjectPermanently( self, "SHIELD", true )
    
        local head    =    GetRandomNumber()
        
    if head <= 0.40 then
        ObjectHideSubObjectPermanently( self, "SHIELD", false )
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end
end

function OnIsengardCrossbowCreated(self)
    ObjectHideSubObjectPermanently( self, "FIREAROWTIP", true )
    ObjectHideSubObjectPermanently( self, "SHIELD", true )
    
        local head    =    GetRandomNumber()
        
    if head <= 0.40 then
        ObjectHideSubObjectPermanently( self, "SHIELD", false )
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end
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
    
    ObjectHideSubObjectPermanently( self, "HELM", true )
    
    ObjectHideSubObjectPermanently( self, "SWORD", true )
    ObjectHideSubObjectPermanently( self, "MACE", true )
    
    local helm    =    GetRandomNumber()
    local weapon    =    GetRandomNumber()

    if helm <= 0.50 then
        ObjectHideSubObjectPermanently( self, "HELM", false )
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end
    
    if weapon <= 0.40 then
        ObjectHideSubObjectPermanently( self, "MACE", false )
    else
        ObjectHideSubObjectPermanently( self, "SWORD", false )
    end

end

function OnMordorArcherCreated(self)
    ObjectHideSubObjectPermanently( self, "FIREAROWTIP", true )
    
    -- helmet types
    ObjectHideSubObjectPermanently( self, "HELM1", true )
    ObjectHideSubObjectPermanently( self, "HELM2", true )
    ObjectHideSubObjectPermanently( self, "HELM3", true )
    ObjectHideSubObjectPermanently( self, "HELM4", true )
    ObjectHideSubObjectPermanently( self, "HELM5", true )
    ObjectHideSubObjectPermanently( self, "HELM6", true )
    ObjectHideSubObjectPermanently( self, "HELM7", true )
    ObjectHideSubObjectPermanently( self, "HELM8", true )
    ObjectHideSubObjectPermanently( self, "HELM9", true )
    ObjectHideSubObjectPermanently( self, "HELM10", true )
    ObjectHideSubObjectPermanently( self, "HELM11", true )
    ObjectHideSubObjectPermanently( self, "HELM12", true )
    ObjectHideSubObjectPermanently( self, "HELM13", true )
    ObjectHideSubObjectPermanently( self, "HELM14", true )
    ObjectHideSubObjectPermanently( self, "HELM15", true )
    ObjectHideSubObjectPermanently( self, "HELM16", true )
    ObjectHideSubObjectPermanently( self, "HELM17", true )
    ObjectHideSubObjectPermanently( self, "HELM18", true )
    ObjectHideSubObjectPermanently( self, "HELM19", true )
    ObjectHideSubObjectPermanently( self, "HELM20", true )    
    ObjectHideSubObjectPermanently( self, "HELM21", true )
    ObjectHideSubObjectPermanently( self, "HELM22", true )
    ObjectHideSubObjectPermanently( self, "HELM23", true )
    ObjectHideSubObjectPermanently( self, "HELM24", true )    
    -- shield types
    ObjectHideSubObjectPermanently( self, "SHIELD1", true )
    ObjectHideSubObjectPermanently( self, "SHIELD2", true )
    ObjectHideSubObjectPermanently( self, "SHIELD3", true )
    ObjectHideSubObjectPermanently( self, "SHIELD4", true )
    ObjectHideSubObjectPermanently( self, "SHIELD5", true )
    ObjectHideSubObjectPermanently( self, "SHIELD6", true )
    ObjectHideSubObjectPermanently( self, "SHIELD7", true )
    ObjectHideSubObjectPermanently( self, "SHIELD8", true )
    -- bow types
    ObjectHideSubObjectPermanently( self, "BOW1", true )
    ObjectHideSubObjectPermanently( self, "BOW2", true )
    ObjectHideSubObjectPermanently( self, "BOW3", true )
    
    local helm = GetRandomNumber()
    local shield = GetRandomNumber()
    local bow = GetRandomNumber()
    
    if helm <= 0.04 then
        ObjectHideSubObjectPermanently( self, "HELM1", false )
    elseif helm <= 0.08 then
        ObjectHideSubObjectPermanently( self, "HELM2", false )
    elseif helm <= 0.12 then
        ObjectHideSubObjectPermanently( self, "HELM3", false )
    elseif helm <= 0.17 then
        ObjectHideSubObjectPermanently( self, "HELM4", false )
    elseif helm <= 0.21 then
        ObjectHideSubObjectPermanently( self, "HELM5", false )    
    elseif helm <= 0.25 then
        ObjectHideSubObjectPermanently( self, "HELM6", false )    
    elseif helm <= 0.29 then
        ObjectHideSubObjectPermanently( self, "HELM7", false )
    elseif helm <= 0.33 then
        ObjectHideSubObjectPermanently( self, "HELM8", false )        
    elseif helm <= 0.38 then
        ObjectHideSubObjectPermanently( self, "HELM9", false )
    elseif helm <= 0.42 then
        ObjectHideSubObjectPermanently( self, "HELM10", false )
    elseif helm <= 0.46 then
        ObjectHideSubObjectPermanently( self, "HELM11", false )
    elseif helm <= 0.5 then
        ObjectHideSubObjectPermanently( self, "HELM12", false )
    elseif helm <= 0.54 then
        ObjectHideSubObjectPermanently( self, "HELM13", false )
    elseif helm <= 0.58 then
        ObjectHideSubObjectPermanently( self, "HELM14", false )
    elseif helm <= 0.63 then
        ObjectHideSubObjectPermanently( self, "HELM15", false )
    elseif helm <= 0.67 then
        ObjectHideSubObjectPermanently( self, "HELM16", false )
    elseif helm <= 0.71 then
        ObjectHideSubObjectPermanently( self, "HELM17", false )
    elseif helm <= 0.75 then
        ObjectHideSubObjectPermanently( self, "HELM18", false )
    elseif helm <= 0.79 then
        ObjectHideSubObjectPermanently( self, "HELM19", false )
    elseif helm <= 0.83 then
        ObjectHideSubObjectPermanently( self, "HELM20", false )
    elseif helm <= 0.88 then
        ObjectHideSubObjectPermanently( self, "HELM21", false )
    elseif helm <= 0.92 then
        ObjectHideSubObjectPermanently( self, "HELM22", false )
    elseif helm <= 0.96 then
        ObjectHideSubObjectPermanently( self, "HELM23", false )
    else
        ObjectHideSubObjectPermanently( self, "HELM24", false )
    end
    --assign random shield
    if shield <= 0.063 then
        ObjectHideSubObjectPermanently( self, "SHIELD1", false )
    elseif shield <= 0.13 then
        ObjectHideSubObjectPermanently( self, "SHIELD2", false )
    elseif shield <= 0.19 then
        ObjectHideSubObjectPermanently( self, "SHIELD3", false )
    elseif shield <= 0.25 then
        ObjectHideSubObjectPermanently( self, "SHIELD4", false )
    elseif shield <= 0.31 then
        ObjectHideSubObjectPermanently( self, "SHIELD5", false )
    elseif shield <= 0.38 then
        ObjectHideSubObjectPermanently( self, "SHIELD6", false )
    elseif shield <= 0.44 then
        ObjectHideSubObjectPermanently( self, "SHIELD7", false )
    elseif shield <= 0.50 then
        ObjectHideSubObjectPermanently( self, "SHIELD8", false )
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end
    -- assign random bow
    if bow <= 0.33 then
        ObjectHideSubObjectPermanently( self, "BOW1", false )
    elseif bow <= 0.66 then
        ObjectHideSubObjectPermanently( self, "BOW2", false )
    else
        ObjectHideSubObjectPermanently( self, "BOW3", false )
    end
end

function OnMordorBannerCreated(self)
    -- helmet types
    ObjectHideSubObjectPermanently( self, "HELM1", true )
    ObjectHideSubObjectPermanently( self, "HELM2", true )
    ObjectHideSubObjectPermanently( self, "HELM3", true )
    ObjectHideSubObjectPermanently( self, "HELM4", true )
    ObjectHideSubObjectPermanently( self, "HELM5", true )
    ObjectHideSubObjectPermanently( self, "HELM6", true )
    ObjectHideSubObjectPermanently( self, "HELM7", true )
    ObjectHideSubObjectPermanently( self, "HELM8", true )
    ObjectHideSubObjectPermanently( self, "HELM9", true )
    ObjectHideSubObjectPermanently( self, "HELM10", true )
    ObjectHideSubObjectPermanently( self, "HELM11", true )
    ObjectHideSubObjectPermanently( self, "HELM12", true )
    ObjectHideSubObjectPermanently( self, "HELM13", true )
    ObjectHideSubObjectPermanently( self, "HELM14", true )
    ObjectHideSubObjectPermanently( self, "HELM15", true )
    ObjectHideSubObjectPermanently( self, "HELM16", true )
    ObjectHideSubObjectPermanently( self, "HELM17", true )
    ObjectHideSubObjectPermanently( self, "HELM18", true )
    ObjectHideSubObjectPermanently( self, "HELM19", true )
    ObjectHideSubObjectPermanently( self, "HELM20", true )    
    ObjectHideSubObjectPermanently( self, "HELM21", true )
    ObjectHideSubObjectPermanently( self, "HELM22", true )
    ObjectHideSubObjectPermanently( self, "HELM23", true )
    ObjectHideSubObjectPermanently( self, "HELM24", true )    
    -- weapon types
    ObjectHideSubObjectPermanently( self, "WEAP1", true )
    ObjectHideSubObjectPermanently( self, "WEAP2", true )
    ObjectHideSubObjectPermanently( self, "WEAP3", true )
    ObjectHideSubObjectPermanently( self, "WEAP4", true )
    ObjectHideSubObjectPermanently( self, "WEAP5", true )
    ObjectHideSubObjectPermanently( self, "WEAP6", true )
    
    -- assign random gear
    local helm = GetRandomNumber()
    local weapon = GetRandomNumber()    
    
    -- assign random helm
    if helm <= 0.04 then
        ObjectHideSubObjectPermanently( self, "HELM1", false )
    elseif helm <= 0.08 then
        ObjectHideSubObjectPermanently( self, "HELM2", false )
    elseif helm <= 0.12 then
        ObjectHideSubObjectPermanently( self, "HELM3", false )
    elseif helm <= 0.17 then
        ObjectHideSubObjectPermanently( self, "HELM4", false )
    elseif helm <= 0.21 then
        ObjectHideSubObjectPermanently( self, "HELM5", false )    
    elseif helm <= 0.25 then
        ObjectHideSubObjectPermanently( self, "HELM6", false )    
    elseif helm <= 0.29 then
        ObjectHideSubObjectPermanently( self, "HELM7", false )
    elseif helm <= 0.33 then
        ObjectHideSubObjectPermanently( self, "HELM8", false )        
    elseif helm <= 0.38 then
        ObjectHideSubObjectPermanently( self, "HELM9", false )
    elseif helm <= 0.42 then
        ObjectHideSubObjectPermanently( self, "HELM10", false )
    elseif helm <= 0.46 then
        ObjectHideSubObjectPermanently( self, "HELM11", false )
    elseif helm <= 0.5 then
        ObjectHideSubObjectPermanently( self, "HELM12", false )
    elseif helm <= 0.54 then
        ObjectHideSubObjectPermanently( self, "HELM13", false )
    elseif helm <= 0.58 then
        ObjectHideSubObjectPermanently( self, "HELM14", false )
    elseif helm <= 0.63 then
        ObjectHideSubObjectPermanently( self, "HELM15", false )
    elseif helm <= 0.67 then
        ObjectHideSubObjectPermanently( self, "HELM16", false )
    elseif helm <= 0.71 then
        ObjectHideSubObjectPermanently( self, "HELM17", false )
    elseif helm <= 0.75 then
        ObjectHideSubObjectPermanently( self, "HELM18", false )
    elseif helm <= 0.79 then
        ObjectHideSubObjectPermanently( self, "HELM19", false )
    elseif helm <= 0.83 then
        ObjectHideSubObjectPermanently( self, "HELM20", false )
    elseif helm <= 0.88 then
        ObjectHideSubObjectPermanently( self, "HELM21", false )
    elseif helm <= 0.92 then
        ObjectHideSubObjectPermanently( self, "HELM22", false )
    elseif helm <= 0.96 then
        ObjectHideSubObjectPermanently( self, "HELM23", false )
    else
        ObjectHideSubObjectPermanently( self, "HELM24", false )
    end
    
    -- assign random weapon
    if weapon <= 0.17 then
        ObjectHideSubObjectPermanently( self, "WEAP1", false )
    elseif weapon <= 0.34 then
        ObjectHideSubObjectPermanently( self, "WEAP2", false )
    elseif weapon <= 0.51 then
        ObjectHideSubObjectPermanently( self, "WEAP3", false )
    elseif weapon <= 0.68 then
        ObjectHideSubObjectPermanently( self, "WEAP4", false )
    elseif weapon <= 0.85 then
        ObjectHideSubObjectPermanently( self, "WEAP5", false )
    else
        ObjectHideSubObjectPermanently( self, "WEAP6", false )
    end
end

function OnMordorFighter2Created(self)
    -- helmet types
    ObjectHideSubObjectPermanently( self, "HELM1", true )
    ObjectHideSubObjectPermanently( self, "HELM2", true )
    ObjectHideSubObjectPermanently( self, "HELM3", true )
    ObjectHideSubObjectPermanently( self, "HELM4", true )
    ObjectHideSubObjectPermanently( self, "HELM5", true )
    ObjectHideSubObjectPermanently( self, "HELM6", true )
    ObjectHideSubObjectPermanently( self, "HELM7", true )
    ObjectHideSubObjectPermanently( self, "HELM8", true )
    ObjectHideSubObjectPermanently( self, "HELM9", true )
    ObjectHideSubObjectPermanently( self, "HELM10", true )
    ObjectHideSubObjectPermanently( self, "HELM11", true )
    ObjectHideSubObjectPermanently( self, "HELM12", true )
    ObjectHideSubObjectPermanently( self, "HELM13", true )
    ObjectHideSubObjectPermanently( self, "HELM14", true )
    ObjectHideSubObjectPermanently( self, "HELM15", true )
    ObjectHideSubObjectPermanently( self, "HELM16", true )
    ObjectHideSubObjectPermanently( self, "HELM17", true )
    ObjectHideSubObjectPermanently( self, "HELM18", true )
    ObjectHideSubObjectPermanently( self, "HELM19", true )
    ObjectHideSubObjectPermanently( self, "HELM20", true )    
    ObjectHideSubObjectPermanently( self, "HELM21", true )
    ObjectHideSubObjectPermanently( self, "HELM22", true )
    ObjectHideSubObjectPermanently( self, "HELM23", true )
    ObjectHideSubObjectPermanently( self, "HELM24", true )    
    -- weapon types
    ObjectHideSubObjectPermanently( self, "WEAP1", true )
    ObjectHideSubObjectPermanently( self, "WEAP2", true )
    ObjectHideSubObjectPermanently( self, "WEAP3", true )
    ObjectHideSubObjectPermanently( self, "WEAP4", true )
    ObjectHideSubObjectPermanently( self, "WEAP5", true )
    ObjectHideSubObjectPermanently( self, "WEAP6", true )
    -- shield types
    ObjectHideSubObjectPermanently( self, "SHIELD1", true )
    ObjectHideSubObjectPermanently( self, "SHIELD2", true )
    ObjectHideSubObjectPermanently( self, "SHIELD3", true )
    ObjectHideSubObjectPermanently( self, "SHIELD4", true )
    ObjectHideSubObjectPermanently( self, "SHIELD5", true )
    ObjectHideSubObjectPermanently( self, "SHIELD6", true )
    ObjectHideSubObjectPermanently( self, "SHIELD7", true )
    ObjectHideSubObjectPermanently( self, "SHIELD8", true )
    
    -- assign random gear
    local helm = GetRandomNumber()
    local weapon = GetRandomNumber()
    local shield = GetRandomNumber()    
    
    -- assign random helm
    if helm <= 0.04 then
        ObjectHideSubObjectPermanently( self, "HELM1", false )
    elseif helm <= 0.08 then
        ObjectHideSubObjectPermanently( self, "HELM2", false )
    elseif helm <= 0.12 then
        ObjectHideSubObjectPermanently( self, "HELM3", false )
    elseif helm <= 0.17 then
        ObjectHideSubObjectPermanently( self, "HELM4", false )
    elseif helm <= 0.21 then
        ObjectHideSubObjectPermanently( self, "HELM5", false )    
    elseif helm <= 0.25 then
        ObjectHideSubObjectPermanently( self, "HELM6", false )    
    elseif helm <= 0.29 then
        ObjectHideSubObjectPermanently( self, "HELM7", false )
    elseif helm <= 0.33 then
        ObjectHideSubObjectPermanently( self, "HELM8", false )        
    elseif helm <= 0.38 then
        ObjectHideSubObjectPermanently( self, "HELM9", false )
    elseif helm <= 0.42 then
        ObjectHideSubObjectPermanently( self, "HELM10", false )
    elseif helm <= 0.46 then
        ObjectHideSubObjectPermanently( self, "HELM11", false )
    elseif helm <= 0.5 then
        ObjectHideSubObjectPermanently( self, "HELM12", false )
    elseif helm <= 0.54 then
        ObjectHideSubObjectPermanently( self, "HELM13", false )
    elseif helm <= 0.58 then
        ObjectHideSubObjectPermanently( self, "HELM14", false )
    elseif helm <= 0.63 then
        ObjectHideSubObjectPermanently( self, "HELM15", false )
    elseif helm <= 0.67 then
        ObjectHideSubObjectPermanently( self, "HELM16", false )
    elseif helm <= 0.71 then
        ObjectHideSubObjectPermanently( self, "HELM17", false )
    elseif helm <= 0.75 then
        ObjectHideSubObjectPermanently( self, "HELM18", false )
    elseif helm <= 0.79 then
        ObjectHideSubObjectPermanently( self, "HELM19", false )
    elseif helm <= 0.83 then
        ObjectHideSubObjectPermanently( self, "HELM20", false )
    elseif helm <= 0.88 then
        ObjectHideSubObjectPermanently( self, "HELM21", false )
    elseif helm <= 0.92 then
        ObjectHideSubObjectPermanently( self, "HELM22", false )
    elseif helm <= 0.96 then
        ObjectHideSubObjectPermanently( self, "HELM23", false )
    else
        ObjectHideSubObjectPermanently( self, "HELM24", false )
    end
    
    -- assign random weapon
    if weapon <= 0.17 then
        ObjectHideSubObjectPermanently( self, "WEAP1", false )
    elseif weapon <= 0.34 then
        ObjectHideSubObjectPermanently( self, "WEAP2", false )
    elseif weapon <= 0.51 then
        ObjectHideSubObjectPermanently( self, "WEAP3", false )
    elseif weapon <= 0.68 then
        ObjectHideSubObjectPermanently( self, "WEAP4", false )
    elseif weapon <= 0.85 then
        ObjectHideSubObjectPermanently( self, "WEAP5", false )
    else
        ObjectHideSubObjectPermanently( self, "WEAP6", false )
    end
    --assign random shield
    if shield <= 0.13 then
        ObjectHideSubObjectPermanently( self, "SHIELD1", false )
    elseif shield <= 0.25 then
        ObjectHideSubObjectPermanently( self, "SHIELD2", false )
    elseif shield <= 0.38 then
        ObjectHideSubObjectPermanently( self, "SHIELD3", false )
    elseif shield <= 0.50 then
        ObjectHideSubObjectPermanently( self, "SHIELD4", false )
    elseif shield <= 0.63 then
        ObjectHideSubObjectPermanently( self, "SHIELD5", false )
    elseif shield <= 0.75 then
        ObjectHideSubObjectPermanently( self, "SHIELD6", false )
    elseif shield <= 0.88 then
        ObjectHideSubObjectPermanently( self, "SHIELD7", false )
    else
        ObjectHideSubObjectPermanently( self, "SHIELD8", false )
    end
end

function OnMordorFighter1Created(self)
    -- helmet types
    ObjectHideSubObjectPermanently( self, "HELM1", true )
    ObjectHideSubObjectPermanently( self, "HELM2", true )
    ObjectHideSubObjectPermanently( self, "HELM3", true )
    ObjectHideSubObjectPermanently( self, "HELM4", true )
    ObjectHideSubObjectPermanently( self, "HELM5", true )
    ObjectHideSubObjectPermanently( self, "HELM6", true )
    ObjectHideSubObjectPermanently( self, "HELM7", true )
    ObjectHideSubObjectPermanently( self, "HELM8", true )
    ObjectHideSubObjectPermanently( self, "HELM9", true )
    ObjectHideSubObjectPermanently( self, "HELM10", true )
    ObjectHideSubObjectPermanently( self, "HELM11", true )
    ObjectHideSubObjectPermanently( self, "HELM12", true )
    ObjectHideSubObjectPermanently( self, "HELM13", true )
    ObjectHideSubObjectPermanently( self, "HELM14", true )
    ObjectHideSubObjectPermanently( self, "HELM15", true )
    ObjectHideSubObjectPermanently( self, "HELM16", true )
    ObjectHideSubObjectPermanently( self, "HELM17", true )
    ObjectHideSubObjectPermanently( self, "HELM18", true )
    ObjectHideSubObjectPermanently( self, "HELM19", true )
    ObjectHideSubObjectPermanently( self, "HELM20", true )    
    ObjectHideSubObjectPermanently( self, "HELM21", true )
    ObjectHideSubObjectPermanently( self, "HELM22", true )
    ObjectHideSubObjectPermanently( self, "HELM23", true )
    ObjectHideSubObjectPermanently( self, "HELM24", true )    
    -- weapon types
    ObjectHideSubObjectPermanently( self, "WEAP1", true )
    ObjectHideSubObjectPermanently( self, "WEAP2", true )
    ObjectHideSubObjectPermanently( self, "WEAP3", true )
    ObjectHideSubObjectPermanently( self, "WEAP4", true )
    ObjectHideSubObjectPermanently( self, "WEAP5", true )
    ObjectHideSubObjectPermanently( self, "WEAP6", true )
    ObjectHideSubObjectPermanently( self, "WEAP7", true )
    ObjectHideSubObjectPermanently( self, "WEAP8", true )
    ObjectHideSubObjectPermanently( self, "WEAP9", true )
    ObjectHideSubObjectPermanently( self, "WEAP10", true )
    ObjectHideSubObjectPermanently( self, "WEAP11", true )
    ObjectHideSubObjectPermanently( self, "WEAP12", true )
    
    -- assign random gear
    local helm = GetRandomNumber()
    local leftweapon = GetRandomNumber()
    local rightweapon = GetRandomNumber()
    
    
    -- assign random helm
    if helm <= 0.04 then
        ObjectHideSubObjectPermanently( self, "HELM1", false )
    elseif helm <= 0.08 then
        ObjectHideSubObjectPermanently( self, "HELM2", false )
    elseif helm <= 0.12 then
        ObjectHideSubObjectPermanently( self, "HELM3", false )
    elseif helm <= 0.17 then
        ObjectHideSubObjectPermanently( self, "HELM4", false )
    elseif helm <= 0.21 then
        ObjectHideSubObjectPermanently( self, "HELM5", false )    
    elseif helm <= 0.25 then
        ObjectHideSubObjectPermanently( self, "HELM6", false )    
    elseif helm <= 0.29 then
        ObjectHideSubObjectPermanently( self, "HELM7", false )
    elseif helm <= 0.33 then
        ObjectHideSubObjectPermanently( self, "HELM8", false )        
    elseif helm <= 0.38 then
        ObjectHideSubObjectPermanently( self, "HELM9", false )
    elseif helm <= 0.42 then
        ObjectHideSubObjectPermanently( self, "HELM10", false )
    elseif helm <= 0.46 then
        ObjectHideSubObjectPermanently( self, "HELM11", false )
    elseif helm <= 0.5 then
        ObjectHideSubObjectPermanently( self, "HELM12", false )
    elseif helm <= 0.54 then
        ObjectHideSubObjectPermanently( self, "HELM13", false )
    elseif helm <= 0.58 then
        ObjectHideSubObjectPermanently( self, "HELM14", false )
    elseif helm <= 0.63 then
        ObjectHideSubObjectPermanently( self, "HELM15", false )
    elseif helm <= 0.67 then
        ObjectHideSubObjectPermanently( self, "HELM16", false )
    elseif helm <= 0.71 then
        ObjectHideSubObjectPermanently( self, "HELM17", false )
    elseif helm <= 0.75 then
        ObjectHideSubObjectPermanently( self, "HELM18", false )
    elseif helm <= 0.79 then
        ObjectHideSubObjectPermanently( self, "HELM19", false )
    elseif helm <= 0.83 then
        ObjectHideSubObjectPermanently( self, "HELM20", false )
    elseif helm <= 0.88 then
        ObjectHideSubObjectPermanently( self, "HELM21", false )
    elseif helm <= 0.92 then
        ObjectHideSubObjectPermanently( self, "HELM22", false )
    elseif helm <= 0.96 then
        ObjectHideSubObjectPermanently( self, "HELM23", false )
    else
        ObjectHideSubObjectPermanently( self, "HELM24", false )
    end
    
    -- assign random weapon right hand
    if rightweapon <= 0.1 then
        ObjectHideSubObjectPermanently( self, "WEAP1", false )
    elseif rightweapon <= 0.17 then
        ObjectHideSubObjectPermanently( self, "WEAP2", false )
    elseif rightweapon <= 0.25 then
        ObjectHideSubObjectPermanently( self, "WEAP3", false )
    elseif rightweapon <= 0.33 then
        ObjectHideSubObjectPermanently( self, "WEAP4", false )
    elseif rightweapon <= 0.42 then
        ObjectHideSubObjectPermanently( self, "WEAP5", false )
    else
        ObjectHideSubObjectPermanently( self, "WEAP6", false )
    end
    
        -- assign random weapon left hand
    if leftweapon <= 0.1 then
        ObjectHideSubObjectPermanently( self, "WEAP7", false )
    elseif leftweapon <= 0.17 then
        ObjectHideSubObjectPermanently( self, "WEAP8", false )
    elseif leftweapon <= 0.25 then
        ObjectHideSubObjectPermanently( self, "WEAP9", false )
    elseif leftweapon <= 0.33 then
        ObjectHideSubObjectPermanently( self, "WEAP10", false )
    elseif leftweapon <= 0.42 then
        ObjectHideSubObjectPermanently( self, "WEAP11", false )
    elseif leftweapon <= 0.55 then
        ObjectHideSubObjectPermanently( self, "WEAP12", false )
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end
end

function OnIthilienRangerCreated(self)

    ObjectHideSubObjectPermanently( self, "FireArowTip", true )
    
    ObjectHideSubObjectPermanently( self, "RANGER", true )
    ObjectHideSubObjectPermanently( self, "RANGERHOOD", true )
    ObjectHideSubObjectPermanently( self, "RANGERTABARD", true )
    ObjectHideSubObjectPermanently( self, "RANGERHOODTABAR", true )
    
    local ranger    =    GetRandomNumber()

    if ranger <= 0.20 then
        ObjectHideSubObjectPermanently( self, "RANGERHOOD", false )
    elseif ranger <= 0.40 then
        ObjectHideSubObjectPermanently( self, "RANGERHOODTABAR", false )
    elseif ranger <= 0.75 then
        ObjectHideSubObjectPermanently( self, "RANGERTABARD", false )        
    else
        ObjectHideSubObjectPermanently( self, "RANGER", false )
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

function OnMordorHaradrimCreated(self)
    -- randomization
    ObjectHideSubObjectPermanently( self, "COIF01", true )
    ObjectHideSubObjectPermanently( self, "COIF02", true )
    ObjectHideSubObjectPermanently( self, "COIF03", true )
    ObjectHideSubObjectPermanently( self, "COIF04", true )
    
    ObjectHideSubObjectPermanently( self, "ORN1", true )
    ObjectHideSubObjectPermanently( self, "ORN2", true )
    
    -- assign random spear
    local coif = GetRandomNumber()
    
    if coif <= 0.5 then
        ObjectHideSubObjectPermanently( self, "COIF01", false )
    elseif coif <= 0.63 then
        ObjectHideSubObjectPermanently( self, "COIF02", false )
    elseif coif <= 0.76 then
        ObjectHideSubObjectPermanently( self, "COIF03", false )
    else
        ObjectHideSubObjectPermanently( self, "COIF04", false )
    end
    
    local orn    =    GetRandomNumber()

    if orn <= 0.15 then
        ObjectHideSubObjectPermanently( self, "ORN1", false )
    elseif orn <= 0.30 then
        ObjectHideSubObjectPermanently( self, "ORN2", false )    
    else
        ObjectHideSubObjectPermanently( self, "NOTHING", false )
    end
end

function OnRohanBannerCreated(self)
    ObjectHideSubObjectPermanently( self, "BANNER01", true )
    ObjectHideSubObjectPermanently( self, "BANNER02", true )
    ObjectHideSubObjectPermanently( self, "BANNER03", true )
    
    -- define the locals as random numbers
    local banner             =    GetRandomNumber()
    
    if banner <= 0.25 then
        ObjectHideSubObjectPermanently( self, "BANNER01", false )
    elseif banner <= 0.50 then
        ObjectHideSubObjectPermanently( self, "BANNER02", false )
    else 
        ObjectHideSubObjectPermanently( self, "BANNER03", false )
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

function OnOrcWarriorsCreated(self)
    ObjectHideSubObjectPermanently( self, "FBPLANE1", true )
    ObjectHideSubObjectPermanently( self, "FBPLANE2", true )
    ObjectHideSubObjectPermanently( self, "FBPLANE3", true )
    ObjectHideSubObjectPermanently( self, "PAULDRON", true )
    ObjectHideSubObjectPermanently( self, "FORGED", true )
end

function OnSwarmGoblinCreated(self)

    -- hide helm and shield
    ObjectHideSubObjectPermanently( self, "HELM", true )
    ObjectHideSubObjectPermanently( self, "GOBLINSHIELD", true )
    
    -- define the locals as random numbers
    local helm                 =    GetRandomNumber()
    local shield             =    GetRandomNumber()
    
    if helm >= 0.5 then
        ObjectHideSubObjectPermanently( self, "HELM", false )
    else 
        ObjectHideSubObjectPermanently( self, "HELM", true )
    end
    
    if shield >= 0.5 then
        ObjectHideSubObjectPermanently( self, "GOBLINSHIELD", false )
    else 
        ObjectHideSubObjectPermanently( self, "GOBLINSHIELD", true )
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
    ObjectHideSubObjectPermanently( self, "FIREAROWTIP", true )
    ObjectHideSubObjectPermanently( self, "PAULDRON", true )
    
    -- hide all cloths, but really, this stuff is obsolete
    ObjectHideSubObjectPermanently( self, "CLOTHHOOD1", true )
    ObjectHideSubObjectPermanently( self, "CLOTHHOOD2", true )
    ObjectHideSubObjectPermanently( self, "CLOTHHOOD3", true )
    ObjectHideSubObjectPermanently( self, "CLOTHHOOD4", true )
    
    -- define the locals as random numbers
    local head                 =    GetRandomNumber()
    
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

function OnSnowTrollCreated(self)
    ObjectHideSubObjectPermanently( self, "GAUNTLETS", true )
    ObjectHideSubObjectPermanently( self, "HELM", true )
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
    ObjectHideSubObjectPermanently( self, "FORGED", true )
    ObjectHideSubObjectPermanently( self, "OBJECT02", true )
end

function OnAragornCreated(self)
    ObjectHideSubObjectPermanently( self, "PLANE02", true )
end

function OnGondorArcherCreated(self)
    -- ObjectHideSubObjectPermanently( self, "arrow", true )        -- This gets hidden pending the art being fixed.  it is the pre-new-archer-firing-pattern arrow
    ObjectHideSubObjectPermanently( self, "FireArowTip", true ) -- This gets hidden because the Fire Arrow upgrade turns it on.
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

function OnRohirrimCreated(self)
    ObjectHideSubObjectPermanently( self, "FORGED_BLADE", true )
    ObjectHideSubObjectPermanently( self, "FireArowTip", true )
    
    -- helmet types
    ObjectHideSubObjectPermanently( self, "HEAD1", true )
    ObjectHideSubObjectPermanently( self, "HEAD2", true )
    ObjectHideSubObjectPermanently( self, "HEAD3", true )
    ObjectHideSubObjectPermanently( self, "HEAD4", true )
    ObjectHideSubObjectPermanently( self, "HEAD5", true )
    
    -- shield types
    ObjectHideSubObjectPermanently( self, "SHIELD01", true )
    ObjectHideSubObjectPermanently( self, "SHIELD02", true )
    ObjectHideSubObjectPermanently( self, "SHIELD03", true )
    ObjectHideSubObjectPermanently( self, "SHIELD04", true )
    ObjectHideSubObjectPermanently( self, "SHIELD05", true )
    ObjectHideSubObjectPermanently( self, "SHIELD06", true )
    ObjectHideSubObjectPermanently( self, "SHIELD07", true )
    ObjectHideSubObjectPermanently( self, "SHIELD08", true )
    
    local helm = GetRandomNumber()
    local shield = GetRandomNumber()
    
    if helm <= 0.25 then
        ObjectHideSubObjectPermanently( self, "HEAD1", false )
--    elseif helm <= 0.40 then
--        ObjectHideSubObjectPermanently( self, "HEAD2", false )
    elseif helm <= 0.50 then
        ObjectHideSubObjectPermanently( self, "HEAD3", false )
    elseif helm <= 0.75 then
        ObjectHideSubObjectPermanently( self, "HEAD4", false )
    else
        ObjectHideSubObjectPermanently( self, "HEAD5", false )
    end
    
    if shield <= 0.125 then
        ObjectHideSubObjectPermanently( self, "SHIELD01", false )
    elseif helm <= 0.25 then
        ObjectHideSubObjectPermanently( self, "SHIELD02", false )
    elseif helm <= 0.375 then
        ObjectHideSubObjectPermanently( self, "SHIELD03", false )
    elseif helm <= 0.50 then
        ObjectHideSubObjectPermanently( self, "SHIELD04", false )
    elseif helm <= 0.625 then
        ObjectHideSubObjectPermanently( self, "SHIELD05", false )
    elseif helm <= 0.75 then
        ObjectHideSubObjectPermanently( self, "SHIELD06", false )
    elseif helm <= 0.875 then
        ObjectHideSubObjectPermanently( self, "SHIELD07", false )
    else
        ObjectHideSubObjectPermanently( self, "SHIELD08", false )
    end
    
end

function OnSummonedRohirrimCreated(self)
    ObjectGrantUpgrade( self, "Upgrade_RohanHorseShield" )
    ObjectHideSubObjectPermanently( self, "FORGED_BLADE", true )
    ObjectHideSubObjectPermanently( self, "FireArowTip", true )
    
    -- helmet types
    ObjectHideSubObjectPermanently( self, "HEAD1", true )
    ObjectHideSubObjectPermanently( self, "HEAD2", true )
    ObjectHideSubObjectPermanently( self, "HEAD3", true )
    ObjectHideSubObjectPermanently( self, "HEAD4", true )
    ObjectHideSubObjectPermanently( self, "HEAD5", true )
    
    -- shield types
    ObjectHideSubObjectPermanently( self, "SHIELD01", true )
    ObjectHideSubObjectPermanently( self, "SHIELD02", true )
    ObjectHideSubObjectPermanently( self, "SHIELD03", true )
    ObjectHideSubObjectPermanently( self, "SHIELD04", true )
    ObjectHideSubObjectPermanently( self, "SHIELD05", true )
    ObjectHideSubObjectPermanently( self, "SHIELD06", true )
    ObjectHideSubObjectPermanently( self, "SHIELD07", true )
    ObjectHideSubObjectPermanently( self, "SHIELD08", true )
    
    local helm = GetRandomNumber()
    local shield = GetRandomNumber()
    
    if helm <= 0.25 then
        ObjectHideSubObjectPermanently( self, "HEAD1", false )
--    elseif helm <= 0.40 then
--        ObjectHideSubObjectPermanently( self, "HEAD2", false )
    elseif helm <= 0.50 then
        ObjectHideSubObjectPermanently( self, "HEAD3", false )
    elseif helm <= 0.75 then
        ObjectHideSubObjectPermanently( self, "HEAD4", false )
    else
        ObjectHideSubObjectPermanently( self, "HEAD5", false )
    end
    
    if shield <= 0.125 then
        ObjectHideSubObjectPermanently( self, "SHIELD01", false )
    elseif helm <= 0.25 then
        ObjectHideSubObjectPermanently( self, "SHIELD02", false )
    elseif helm <= 0.375 then
        ObjectHideSubObjectPermanently( self, "SHIELD03", false )
    elseif helm <= 0.50 then
        ObjectHideSubObjectPermanently( self, "SHIELD04", false )
    elseif helm <= 0.625 then
        ObjectHideSubObjectPermanently( self, "SHIELD05", false )
    elseif helm <= 0.75 then
        ObjectHideSubObjectPermanently( self, "SHIELD06", false )
    elseif helm <= 0.875 then
        ObjectHideSubObjectPermanently( self, "SHIELD07", false )
    else
        ObjectHideSubObjectPermanently( self, "SHIELD08", false )
    end
end

function OnGondorCavalryCreated(self)
    ObjectHideSubObjectPermanently( self, "FORGED", true )
    ObjectHideSubObjectPermanently( self, "SSHIELD", true )
end

function OnCatapultCreated(self)
    --ObjectHideSubObjectPermanently( self, "PROJECTILEROCK", true )
    ObjectHideSubObjectPermanently( self, "FIREPLANE", true )
end

function OnTrebuchetCreated(self)
    ObjectHideSubObjectPermanently( self, "FIREPLANE", true )
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
    ObjectHideSubObject( self, "SHARD01", true )
    ObjectHideSubObject( self, "SHARD02", true )
    ObjectHideSubObject( self, "SHARD03", true )
    ObjectHideSubObject( self, "SHARD04", true )
    ObjectHideSubObject( self, "SHARD05", true )
    ObjectHideSubObject( self, "SHARD06", true )
    ObjectHideSubObject( self, "SHARD07", true )
    ObjectHideSubObject( self, "SHARD08", true )
    ObjectHideSubObject( self, "SHARD09", true )
    ObjectHideSubObject( self, "SHARD10", true )
    ObjectHideSubObject( self, "SHARD11", true )
    ObjectHideSubObject( self, "SHARD12", true )
    ObjectHideSubObject( self, "SHARD13", true )
    ObjectHideSubObject( self, "SHARD14", true )
    ObjectHideSubObject( self, "SHARD15", true )
    ObjectHideSubObject( self, "SHARD16", true )
    ObjectHideSubObject( self, "SHARD17", true )
    ObjectHideSubObject( self, "SHARD18", true )
    ObjectHideSubObject( self, "SHARD19", true )
    ObjectHideSubObject( self, "SHARD20", true )
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