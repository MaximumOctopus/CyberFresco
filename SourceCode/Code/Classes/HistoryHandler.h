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

#include "HistoryItem.h"


class HistoryHandler
{

public:

	std::vector<HistoryItem*> History;

    HistoryHandler();

    void Add(const std::wstring);

	bool Load(const std::wstring);

	bool Save(const std::wstring);
};