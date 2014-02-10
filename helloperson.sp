#include <sourcemod>

public Plugin:myinfo = 
{
	name = "Hello Person",
	author = "HeyLookAtThat",
	description = "Prints hello to clients on connect.",
	version = "1.0.0",
	url = "http://steamcommunity.com/id/whatsdatoverthere/"
}

public OnPluginStart()
{
	
}

public OnClientPutInServer(client)
{
	decl String:name[64];
	GetClientName(client, name, sizeof(name));
	PrintToChat(client, "Welcome %s to the server!", name);
}