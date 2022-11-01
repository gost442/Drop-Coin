public void Morte(Event event, const char[] name, bool dontBroadcast)
{
	int client = GetClientOfUserId(event.GetInt("userid"));
	if (IsValidClient(client))
	{
		if (55 >= GetRandomInt(0, 100))
		{
			float origem[3];
			GetClientAbsOrigin(client, origem);
			
			int coin = criar_prop_psy();
			TeleportEntity(coin, origem, NULL_VECTOR, NULL_VECTOR);
			
			CreateTimer(0.1, Ver_Pos, EntIndexToEntRef(coin), TIMER_REPEAT | TIMER_FLAG_NO_MAPCHANGE);
		}
	}
}


public void OutPut_ANIM(const char[] output, int coin, int activator, float delay)
{
	if (!IsValidEntity(coin))
	{
		return;
	}
	if (Coin_See[coin] == true)
	{
		if (IsValidEdict(coin))
		{
			float A_Pos[3];
			GetEntPropVector(coin, Prop_Data, "m_vecAbsOrigin", A_Pos);
			A_Pos[2] += 57.0;
			TeleportEntity(coin, A_Pos, NULL_VECTOR, NULL_VECTOR);
			
			SetVariantString("rodarso");
			AcceptEntityInput(coin, "SetAnimation", -1, -1, 0);
			Coin_See[coin] = false;
		}
	}
} 