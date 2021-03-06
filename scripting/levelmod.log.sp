#include <sourcemod>
#include <sdktools>
#include <levelmod>
#include <loghelper>

#pragma semicolon 1
#define PLUGIN_VERSION "0.1.0"

////////////////////////
//P L U G I N  I N F O//
////////////////////////
public Plugin:myinfo =
{
	name = "Leveling Mod, Log",
	author = "Thrawn",
	description = "A plugin for Leveling Mod, logs every levelup and leveldown.",
	version = PLUGIN_VERSION,
	url = "http://thrawn.de"
}

public OnMapStart()
{
	GetTeams();
}

public lm_OnClientLevelUp(client, level, amount, bool:isLevelDown)
{
	if(isLevelDown)
		LogPlayerEvent(client, "triggered", "levelmod_leveldown");
	else
		LogPlayerEvent(client, "triggered", "levelmod_levelup");
}