/*
	AI Mission for Epoch Mod for Arma 3
	By Ghostrider
	Functions and global variables used by the mission system.
	Last modified 3/20/17
	
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/
*/
#include "\q\addons\custom_server\Configs\blck_defines.hpp";
//blck_functionsCompiled = false;

// General functions
blck_fnc_waitTimer = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Functions\GMS_fnc_waitTimer.sqf";
blck_fnc_timedOut = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Functions\GMS_fnc_timedOut.sqf";
blck_fnc_FindSafePosn = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Functions\GMS_fnc_findSafePosn.sqf"; 
blck_fnc_randomPosition = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Functions\GMS_fnc_randomPosn.sqf";// find a randomPosn. see script for details.
blck_fnc_findPositionsAlongARadius  = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Functions\GMS_fnc_findPositionsAlongARadius.sqf";
blck_fnc_giveTakeCrypto = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Functions\GMS_fnc_giveTakeCrypto.sqf";
blck_fnc_monitorHC = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Functions\GMS_fnc_monitorHC.sqf";
blck_fnc_timeAcceleration = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\TimeAccel\GMS_fnc_Time.sqf";
blck_fnc_getModType = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Functions\GMS_fnc_getModType.sqf";  // Test if Epoch or Exile is loaded
blck_fnc_groupsOnAISide = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Functions\GMS_fnc_GroupsOnAISide.sqf";  // Returns the number of groups on the side used by AI
blck_fnc_emptyObject = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Functions\GMS_fnc_emptyObject.sqf"; 
blck_fnc_playerInRange = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Functions\GMS_fnc_playerInRange.sqf"; 
blck_fnc_playerInRangeArray = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Functions\GMS_fnc_playerInRangeArray.sqf";   // GMS_fnc_playerInRangeArray
blck_fnc_mainThread = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Functions\GMS_fnc_mainThread.sqf"; 	
blck_fnc_allPlayers = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Functions\GMS_fnc_allPlayers.sqf";
blck_fnc_addItemToCrate = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Functions\GMS_fnc_addItemToCrate.sqf";
blck_fnc_loadLootItemsFromArray = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Functions\GMS_fnc_loadLootItemsFromArray.sqf";

#ifdef DBDserver	
blck_fnc_broadcastServerFPS = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Functions\GMS_fnc_broadcastServerFPS.sqf"; 
diag_log "blck_functions loaded using DBDServer settings ---- >>>> ";
#endif

// Player-related functions
blck_fnc_rewardKiller = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Units\GMS_fnc_rewardKiller.sqf";
blck_fnc_MessagePlayers = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Functions\GMS_fnc_AIM.sqf";  // Send messages to players regarding Missions

// Mission-related functions
blck_fnc_selectAILoadout = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_selectAILoadout.sqf";
blck_fnc_addMissionToQue  = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_addMissionToQue.sqf";  // 
blck_fnc_updateMissionQue  = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_updateMissionQue.sqf";  // 
blck_fnc_spawnPendingMissions = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnPendingMissions.sqf";	  //  
blck_fnc_addLiveAItoQue = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_addLiveAItoQue.sqf"; 
blck_fnc_addObjToQue = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_addObjToQue.sqf";  //
//blck_fnc_missionTimer = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_missionTimer.sqf";
blck_fnc_spawnCrate = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnCrate.sqf"; // Simply spawns a crate of a specified type at a specific position.
blck_fnc_spawnMissionCrates = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnMissionCrates.sqf";  
blck_fnc_cleanupObjects = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_cleanUpObjects.sqf";
blck_fnc_spawnCompositionObjects = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnBaseObjects.sqf";
blck_fnc_spawnRandomLandscape = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnRandomLandscape.sqf";
blck_fnc_spawnMissionVehiclePatrols = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnMissionVehiclePatrols.sqf";
blck_fnc_spawnEmplacedWeaponArray = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnEmplacedWeaponArray.sqf";
blck_fnc_spawnMissionAI = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnMissionAI.sqf";
blck_fnc_spawnMissionLootVehicles = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnMissionLootVehicles.sqf";
blck_fnc_fillBoxes = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_fillBoxes.sqf"; // Adds items to an object according to passed parameters. See the script for details.
blck_fnc_smokeAtCrates = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_smokeAtCrates.sqf"; // Spawns a wreck and adds smoke to it
blck_fnc_spawnMines = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnMines.sqf";  // Deploys mines at random locations around the mission center
blck_fnc_clearMines = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_clearMines.sqf"; // clears mines in an array passed as a parameter
blck_fnc_signalEnd = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_signalEnd.sqf"; // deploy smoke grenades at loot crates at the end of the mission.
blck_fnc_endMission = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_endMission.sqf";
blck_fnc_missionAIareDead = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Missions\GMS_fnc_missionAIareDead.sqf";

// #define Reinforcements 1
#ifdef Reinforcements
// Reinforcement-related functions
//blck_fnc_callInReinforcements = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Reinforcements\GMS_fnc_callInReinforcements.sqf"; 
//blck_fnc_spawnParaUnits  = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Reinforcements\GMS_fnc_spawnParaUnits.sqf"; 
//blck_fnc_spawnParaCrate  = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Reinforcements\GMS_fnc_spawnParaCrate.sqf"; 
//blck_fnc_spawnReinforcHeli = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Reinforcements\GMS_fnc_spawnReinforcHeli.sqf"; 
//blck_fnc_sendHeliHome = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Reinforcements\GMS_fnc_sendHeliHome.sqf"; 
//blck_fnc_spawnHeliPatrol = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Reinforcements\GMS_fnc_spawnParaUnits.sqf"; 
//blck_fnc_spawnHeliPatrol = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Reinforcements\GMS_fnc_spawnParaUnits.sqf"; 
#endif

// Group-related functions
blck_fnc_spawnGroup = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Groups\GMS_fnc_spawnGroup.sqf";  // Spawn a single group and populate it with AI units]
blck_fnc_setupWaypoints = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Groups\GMS_fnc_setupWaypoints.sqf";  // Set default waypoints for a group
blck_fnc_missionGroupMonitor = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Groups\GMS_fnc_missionGroupMonitor.sqf";  // Monitors active groups for those that are stuck in an SAD waypoint but not in combat
blck_fnc_changeToSADWaypoint = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Groups\GMS_fnc_changeToSADWaypoint.sqf"; 
blck_fnc_changeToMoveWaypoint = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Groups\GMS_fnc_changeToMoveWaypoint.sqf"; 
blck_fnc_changeToSentryWaypoint = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Groups\GMS_fnc_changeToSentryWaypoint.sqf";  // 
//blck_fnc_setNextWaypoint = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Groups\GMS_fnc_setNextWaypoint.sqf";
blck_fnc_cleanEmptyGroups = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Groups\GMS_fnc_cleanEmptyGroups.sqf";  // GMS_fnc_cleanEmptyGroups

// Functions specific to vehicles, whether wheeled, aircraft or static
blck_fnc_spawnVehicle = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_spawnVehicle.sqf";            
blck_fnc_spawnVehiclePatrol = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_spawnVehiclePatrol.sqf";  
blck_fnc_protectVehicle = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_protectVehicle.sqf";
blck_fnc_configureMissionVehicle = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_configureMissionVehicle.sqf";
blck_fnc_vehicleMonitor = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_vehicleMonitor.sqf";  
blck_fnc_spawnMissionReinforcements  = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_spawnReinforcements.sqf"; 
blck_fnc_spawnMissionHeli = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_spawnMissionHeli.sqf";  
blck_fnc_spawnMissionParatroops = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_spawnMissionParatroops.sqf";  // Lumped here because these 'jump' from aircraft
blck_fnc_spawnParaUnits = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_spawnParaUnits.sqf";  // Lumped here because these 'jump' from aircraft
blck_fnc_releaseVehicleToPlayers = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_releaseVehicleToPlayers.sqf"; //  GMS_fnc_releaseVehicleToPlayers
 
// functions to support Units
blck_fnc_removeGear = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Units\GMS_fnc_removeGear.sqf"; // Strip an AI unit of all gear.
blck_fnc_spawnAI = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Units\GMS_fnc_spawnUnit.sqf"; // spawn individual AI
blck_EH_AIKilled = "\q\addons\custom_server\Compiles\Units\GMS_EH_AIKilled.sqf";  // Event handler to process AI deaths	
blck_EH_AHHit = "\q\addons\custom_server\Compiles\Units\GMS_EH_AIHit.sqf";
blck_EH_AIFiredNear = "\q\addons\custom_server\Compiles\Units\GMS_EH_AIFiredNear.sqf";
blck_EH_unitWeaponReloaded = "\q\addons\custom_server\Compiles\Units\GMS_EH_unitWeaponReloaded.sqf";
blck_fnc_processAIKill = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Units\GMS_fnc_processAIKill.sqf";
blck_fnc_removeLaunchers = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Units\GMS_fnc_removeLaunchers.sqf";
blck_fnc_removeNVG = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Units\GMS_fnc_removeNVG.sqf";
blck_fnc_alertNearbyUnits = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Units\GMS_fnc_alertNearbyUnits.sqf";
blck_fnc_alertNearbyLeader = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Units\GMS_fnc_alertNearbyLeader.sqf";
blck_fnc_processIlleagalAIKills = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Units\GMS_fnc_processIlleagalAIKills.sqf";
blck_fnc_cleanupDeadAI = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Units\GMS_fnc_cleanupDeadAI.sqf"; // handles deletion of AI bodies and gear when it is time.
blck_fnc_setSkill = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Units\GMS_fnc_setSkill.sqf";
blck_fnc_cleanupAliveAI = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Units\GMS_fnc_cleanupAliveAI.sqf";
blck_fnc_deleteAI = compileFinal  preprocessFileLineNumbers "\q\addons\custom_server\Compiles\Units\GMS_fnc_deleteAI.sqf";

diag_log "[blckeagls] Functions Loaded";
blck_functionsCompiled = true;
