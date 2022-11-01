public Action Touch_Coin(int coin, int client)
{
	if (IsValidClient(client) && IsValidEdict(coin))
	{
		
		float Player_Speed = GetEntPropFloat(client, Prop_Send, "m_flLaggedMovementValue");
		switch (GetRandomInt(1, 46))
		{
			case 1:
			{
				GivePlayerItem(client, "weapon_molotov");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win Molotov ]");
			}
			case 2:
			{
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ Coin Leaves And Say Bye Bye ]");
			}
			case 3:
			{
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ Coin Leaves And Say Bye Bye ]");
			}
			case 4:
			{
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ Coin Leaves And Say Bye Bye ]");
			}
			case 5:
			{
				GivePlayerItem(client, "weapon_molotov");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win Molotov ]");
			}
			case 6:
			{
				SetEntProp(client, Prop_Send, "m_ArmorValue", 100);
				SetEntProp(client, Prop_Send, "m_bHasHelmet", 1);
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win +AP ]");
			}
			case 7:
			{
				SetEntProp(client, Prop_Send, "m_ArmorValue", 100);
				SetEntProp(client, Prop_Send, "m_bHasHelmet", 1);
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win +AP ]");
			}
			case 8:
			{
				GivePlayerItem(client, "weapon_hegrenade");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win HE ]");
			}
			case 9:
			{
				GivePlayerItem(client, "weapon_healthshot");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win HealthShot ]");
			}
			case 10:
			{
				GivePlayerItem(client, "weapon_healthshot");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win HealthShot ]");
			}
			case 11:
			{
				GivePlayerItem(client, "weapon_healthshot");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win HealthShot ]");
			}
			case 12:
			{
				GivePlayerItem(client, "weapon_healthshot");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win HealthShot ]");
			}
			case 13:
			{
				GivePlayerItem(client, "weapon_hegrenade");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win HE]");
			}
			case 14:
			{
				GivePlayerItem(client, "weapon_taser");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win Taser ]");
			}
			case 15:
			{
				GivePlayerItem(client, "weapon_tagrenade");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win TA ]");
			}
			case 16:
			{
				GivePlayerItem(client, "weapon_smokegrenade");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win Smoke ]");
			}
			case 17:
			{
				SetEntityHealth(client, GetClientHealth(client) + 5);
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win +5 HP ]");
			}
			case 18:
			{
				SetEntityHealth(client, GetClientHealth(client) + 15);
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win +15 HP ]");
			}
			case 19:
			{
				SetEntityHealth(client, GetClientHealth(client) + 3);
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win +3 HP ]");
			}
			case 20:
			{
				SetEntityHealth(client, GetClientHealth(client) + 7);
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win +7 HP ]");
			}
			case 21:
			{
				SetEntityHealth(client, GetClientHealth(client) + 10);
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win +10 HP ]");
			}
			case 22:
			{
				SetEntityHealth(client, GetClientHealth(client) + 8);
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win +8 HP ]");
			}
			case 23:
			{
				SetEntityHealth(client, GetClientHealth(client) + 9);
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win +9 HP ]");
			}
			case 24:
			{
				SetEntityHealth(client, GetClientHealth(client) + 11);
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win +11 HP ]");
			}
			case 25:
			{
				SetEntityHealth(client, GetClientHealth(client) + 13);
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win +13 HP ]");
			}
			case 26:
			{
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ Coin Leaves And Say Bye Bye ]");
			}
			case 27:
			{
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ Coin Leaves And Say Bye Bye ]");
			}
			case 28:
			{
				SetEntityHealth(client, GetClientHealth(client) + 65);
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win +65 HP ]");
			}
			case 29:
			{
				SetEntityHealth(client, GetClientHealth(client) + 50);
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win +50 HP ]");
			}
			case 30:
			{
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ Coin Leaves And Say Bye Bye ]");
			}
			case 31:
			{
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ Coin Leaves And Say Bye Bye ]");
			}
			case 32:
			{
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ Coin Leaves And Say Bye Bye ]");
			}
			
			case 33:
			{
				GivePlayerItem(client, "weapon_breachcharge");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win Breach charger ]");
			}
			case 34:
			{
				GivePlayerItem(client, "weapon_breachcharge");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win Breach charger ]");
			}
			
			case 35:
			{
				GivePlayerItem(client, "weapon_breachcharge");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win Breach charger ]");
			}
			case 36:
			{
				GivePlayerItem(client, "weapon_snowball");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win SnowBall ]");
			}
			case 37:
			{
				GivePlayerItem(client, "weapon_snowball");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win SnowBall ]");
			}
			case 38:
			{
				GivePlayerItem(client, "weapon_bumpmine");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win BumpMine ]");
			}
			case 39:
			{
				GivePlayerItem(client, "weapon_bumpmine");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win BumpMine ]");
			}
			case 40:
			{
				GivePlayerItem(client, "weapon_bumpmine");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win BumpMine ]");
			}
			case 41:
			{
				GivePlayerItem(client, "weapon_bumpmine");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win BumpMine ]");
			}
			case 42:
			{
				GivePlayerItem(client, "weapon_bumpmine");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win BumpMine ]");
			}
			case 43:
			{
				GivePlayerItem(client, "weapon_bumpmine");
				SetHudTextParams(0.4, 0.9, 1.3, 0, 255, 0, 1, 0, 0.1, 0.1, 0.2);
				ShowHudText(client, 3, "");
				ShowHudText(client, 3, "[ You Win BumpMine ]");
			}
		}
		
		RemoveEdict(coin);
		
		SetEntPropFloat(client, Prop_Send, "m_flLaggedMovementValue", Player_Speed);
	}
	return Plugin_Handled;
} 