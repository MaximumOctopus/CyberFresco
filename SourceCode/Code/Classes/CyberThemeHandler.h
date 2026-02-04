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

#include "CyberTheme.h"


class CyberThemeHandler
{

	bool AddTheme(const std::wstring);

public:

	std::vector<CyberTheme*> Themes;

	CyberThemeHandler(const std::wstring);

	bool Load(const std::wstring);

	bool BuildThemePreview(CyberTheme*, const std::wstring);
	bool BuildIndexThemePreview(CyberTheme*, const std::wstring, const std::wstring);

    bool CopyFilesTo(const std::wstring, const std::wstring);

    int GetIndexFromName(const std::wstring);
};
