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


class HistoryItem
{

public:

	std::wstring Title = L"";
	std::wstring FileName = L"";
	int Sections = 0;
	int Pictures = 0;
    std::wstring Date = L"";

    HistoryItem();

};
