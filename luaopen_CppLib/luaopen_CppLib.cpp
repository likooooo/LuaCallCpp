// luaopen_CppLib.cpp : Defines the exported functions for the DLL application.
//

#include "stdafx.h"
#include "lua.hpp"

/////////////////////////////
//test function
/////////////////////////////
extern "C" int add(lua_State * L)
{
	double leftData = luaL_checknumber(L,1);
	double rightData = luaL_checknumber(L,2);
	lua_pushnumber(L,leftData + rightData);
	return 1;
}

static luaL_Reg libs[] = {
	{"add" , add},	//....
	{NULL , NULL}	//end function list
};

extern "C" __declspec(dllexport)
int luaopen_CppLibForLua(lua_State * L)
{
	//luaL_checkversion(L);
	//luaL_newlib(L,libs);

	lua_newtable(L);
	luaL_setfuncs(L,  libs,0);
	//lua_newtable(L);
	//luaL_setfuncs(L,luaopen_LuaCallCpp,0);
	return 1;
}
