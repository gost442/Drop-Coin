
public void OnMapStart()
{
	skin_precash = PrecacheModel("models/gcoinv8/coin_nova.mdl");
}


public void OnPluginStart()
{
	HookEvent("player_death", Morte);
	HookEntityOutput("prop_dynamic", "OnAnimationDone", OutPut_ANIM);
}
