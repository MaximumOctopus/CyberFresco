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


class CyberThemeItem
{
public:

	std::wstring Colour = L"0";
	std::wstring FontColour = L"0";
	std::wstring FontSize = L"14";
	std::wstring HoverColour = L"0";

	std::wstring Graphic = L"";
};


class CyberTheme
{

public:

	std::wstring Name = L"";
	std::wstring Author = L"";
	std::wstring Location = L"";
	bool Factory = true;

    CyberThemeItem Attributes[3];

	CyberTheme();
};
