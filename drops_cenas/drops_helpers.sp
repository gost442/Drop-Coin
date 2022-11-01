public int criar_prop_psy()
{
	int Coin_Psy = CreateEntityByName("prop_physics_override");
	SetEntityModel(Coin_Psy, "models/gcoinv8/coin_nova.mdl");
	SetEntProp(Coin_Psy, Prop_Send, "m_nSkin", skin_precash);
	DispatchSpawn(Coin_Psy);
	DispatchKeyValue(Coin_Psy, "shadowcastdist", "0");
	DispatchKeyValue(Coin_Psy, "disablereceiveshadows", "1");
	DispatchKeyValue(Coin_Psy, "disableshadows", "1");
	DispatchKeyValue(Coin_Psy, "disableshadowdepth", "1");
	DispatchKeyValue(Coin_Psy, "disableselfshadowing", "1");
	SetEntProp(Coin_Psy, Prop_Send, "m_usSolidFlags", 152);
	SetEntProp(Coin_Psy, Prop_Send, "m_CollisionGroup", 11);
	
	CreateTimer(0.3, Ativar_Hook, EntIndexToEntRef(Coin_Psy), TIMER_FLAG_NO_MAPCHANGE);
	
	return Coin_Psy;
}
public Action Ativar_Hook(Handle timer, int id)
{
	int Coin_Psy = EntRefToEntIndex(id);
	
	SDKHook(Coin_Psy, SDKHook_Touch, Touch_Coin);
	
	return Plugin_Stop;
}
public int criar_prop_estatica()
{
	int coin_est = CreateEntityByName("prop_dynamic_override");
	SetEntityModel(coin_est, "models/gcoinv8/coin_nova.mdl");
	SetEntProp(coin_est, Prop_Send, "m_nSkin", skin_precash);
	DispatchSpawn(coin_est);
	DispatchKeyValue(coin_est, "Solid", "6");
	DispatchKeyValue(coin_est, "shadowcastdist", "0");
	DispatchKeyValue(coin_est, "disablereceiveshadows", "1");
	DispatchKeyValue(coin_est, "disableshadows", "1");
	DispatchKeyValue(coin_est, "disableshadowdepth", "1");
	DispatchKeyValue(coin_est, "disableselfshadowing", "1");
	AcceptEntityInput(coin_est, "EnableCollision");
	SetEntProp(coin_est, Prop_Send, "m_usSolidFlags", 152);
	SetEntProp(coin_est, Prop_Send, "m_CollisionGroup", 11);
	
	SDKHook(coin_est, SDKHook_Touch, Touch_Coin);
	
	return coin_est;
}


public Action Ver_Pos(Handle timer, int id)
{
	int coin_ent = EntRefToEntIndex(id);
	if (IsValidEdict(coin_ent))
	{
		float A_Pos[3];
		GetEntPropVector(coin_ent, Prop_Data, "m_vecAbsOrigin", A_Pos);
		float dist = GetVectorDistance(A_Pos, Last_Pos[coin_ent]);
		if (dist < 1.0 && dist > -1.0)
		{
			
			int Coin_Static = criar_prop_estatica();
			TeleportEntity(Coin_Static, A_Pos, NULL_VECTOR, NULL_VECTOR);
			Coin_See[Coin_Static] = false;
			
			SetVariantString("subir");
			AcceptEntityInput(Coin_Static, "SetAnimation", -1, -1, 0);
			Coin_See[Coin_Static] = true;
			
			RemoveEdict(coin_ent);
			
			return Plugin_Stop;
		}
		Last_Pos[coin_ent][0] = A_Pos[0];
		Last_Pos[coin_ent][1] = A_Pos[1];
		Last_Pos[coin_ent][2] = A_Pos[2];
	}
	else
	{
		return Plugin_Stop;
	}
	
	return Plugin_Continue;
}



public bool IsValidClient(int client)
{
	if (0 < client && client <= MaxClients && IsClientInGame(client) && IsFakeClient(client) == false)
	{
		return true;
	}
	return false;
}
