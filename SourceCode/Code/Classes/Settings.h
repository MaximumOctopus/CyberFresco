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

#pragma once


class Settings
{

public:

	int Top = 0;
	int Left = 0;
	int Width = 0;
	int Height = 0;

	bool ShowTips = true;

	bool UseDefaultFTP = false;
	std::wstring WebsiteURL = L"";
	std::wstring FTPHost = L"";
	std::wstring Username = L"";
	std::wstring Password = L"";
	std::wstring HomeURL = L"";
	bool FTPPassive = true;
	int FTPPort = 21;

	Settings(const std::wstring);

	bool Load(const std::wstring);
    bool Save(const std::wstring);
};
