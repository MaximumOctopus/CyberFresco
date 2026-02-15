// ===================================================================
//
//   (c) Paul Alan Freshney 2005-2026
//   www.freshney.org :: paul@freshney.org :: maximumoctopus.com
//
//   https://github.com/MaximumOctopus/CyberFresco
//
//   https://maximumoctopus.hashnode.dev/
//
//   C++ Rewrite January 17th 2026
//
// ===================================================================

#include <fstream>

#include "Formatting.h"
#include "Ini.h"
#include "Settings.h"


Settings::Settings(const std::wstring file_name)
{
	FileName = file_name;

	Load();
}


bool Settings::Load()
{
	Ini* config = new Ini(FileName);

	if (config->Loaded)
	{
		Top = config->ReadInteger(L"Main", L"Top", 50);
		Left = config->ReadInteger(L"Main", L"Left", 50);
		Width = config->ReadInteger(L"Main", L"Width", 714);
		Height = config->ReadInteger(L"Main", L"Height", 500);

		ShowTips = config->ReadInteger(L"Main", L"ShowTips", true);

		UseDefaultFTP = config->ReadInteger(L"Main", L"UseDefaultFTP", false);
		WebsiteURL    = config->ReadString(L"Main", L"WebsiteURL", L"");
		FTPHost       = config->ReadString(L"Main", L"FTPHost", L"");
		Username      = config->ReadString(L"Main", L"Username", L"");
		Password      = config->ReadString(L"Main", L"Password", L"");
		HomeURL       = config->ReadString(L"Main", L"HomeURL", L"");

		FTPPassive    = config->ReadInteger(L"FTP", L"FTPPassive", true);
		FTPPort       = config->ReadInteger(L"FTP", L"FTPPort", 21);

		delete config;

		return true;
	}

	return false;
}


bool Settings::Save()
{
	std::ofstream file(FileName);

	if (file)
	{
		file << Formatting::to_utf8(L"[Main]\n");

		file << Formatting::to_utf8(L"Top=" + std::to_wstring(Top) + L"\n");
		file << Formatting::to_utf8(L"Left=" + std::to_wstring(Left) + L"\n");
		file << Formatting::to_utf8(L"Width=" + std::to_wstring(Width) + L"\n");
		file << Formatting::to_utf8(L"Height=" + std::to_wstring(Height) + L"\n");

		file << Formatting::to_utf8(L"ShowTips=" + std::to_wstring(ShowTips) + L"\n");

		file << Formatting::to_utf8(L"UseDefaultFTP=" + std::to_wstring(UseDefaultFTP) + L"\n");
		file << Formatting::to_utf8(L"WebsiteURL=" + WebsiteURL + L"\n");
		file << Formatting::to_utf8(L"FTPHost=" + FTPHost + L"\n");
		file << Formatting::to_utf8(L"Username=" + Username + L"\n");
		file << Formatting::to_utf8(L"Password=" + Password + L"\n");
		file << Formatting::to_utf8(L"HomeURL=" + HomeURL + L"\n");

		file << Formatting::to_utf8(L"[FTP]\n");
		file << Formatting::to_utf8(L"FTPPassive=" + std::to_wstring(FTPPassive) + L"\n");
		file << Formatting::to_utf8(L"FTPPort=" + std::to_wstring(FTPPort) + L"\n");

        return true;
	}

	return false;
}


/*procedure TfrmMain.LoadSettings;

  ftpMain.Passive:=CFSettings.FTPPassive;
  ftpMain.Port:=CFSettings.FTPPort;
end;                              */
