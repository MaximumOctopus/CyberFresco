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

#include <vector>

#include "Album.h"
#include "CyberTheme.h"


class PageGenerator
{

	std::wstring RunFrom = L"";

public:

	std::vector<std::wstring> Files;

	PageGenerator(const std::wstring);

	bool IndexTheme(const std::wstring, Album*, CyberTheme*, bool);

	bool Page(Album*, CyberTheme*, int,
			  int, int, int, int, int, int,
			  const std::wstring, bool, bool);

	void Clear();
};
