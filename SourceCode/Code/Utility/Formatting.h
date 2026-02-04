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


#include <string>


namespace Formatting
{
	[[nodiscard]] std::wstring AddLeadingSpace(std::wstring, int);
    [[nodiscard]] std::wstring AddTrailingSpace(std::wstring, int);

	std::wstring LDToStr(long double);

	std::wstring ReturnPageFileName(int);
	std::wstring MakeWebFileLink(std::wstring);

    std::wstring RemoveTrailingSlash(const std::wstring);

	std::wstring HexColourToString(int);
	int StringToHexColour(const std::wstring);

	std::string to_utf8(const std::wstring& str);
	std::string to_utf8(const wchar_t* buffer, int len);
}