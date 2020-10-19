// ConsoleTest.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <Windows.h>
#include <iostream>

using namespace std;
int _tmain(int argc, _TCHAR* argv[])
{
	int res = 10;
	while(res>2)
	{
		res = MessageBox(NULL, L"container", L"title", MB_YESNOCANCEL);
		cout<<res<<endl;
	}
	return 0;
}

