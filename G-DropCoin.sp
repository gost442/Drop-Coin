#include <sourcemod>
#include <cstrike>
#include <sdktools>
#include <sdkhooks>
#include <multicolors>

#pragma semicolon 1
#pragma newdecls required
#define MAXENTITIES 4096

int skin_precash;

float Last_Pos[2049][3];

bool Coin_See[MAXENTITIES + 1] = { false, ... };

#include "drops_cenas/drops_helpers.sp"
#include "drops_cenas/drops_events.sp"
#include "drops_cenas/drops_hooks.sp"
#include "drops_cenas/drops_rewards.sp"


