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
	static const int kPropertyListCount = 7;

	enum class FileProperty {
		None = 0, Open, Close,
		Title, FileName, Sections, Pictures, Date
	};

	const std::wstring FilePropertyList[kPropertyListCount] = {
		L"{", L"}",
		L"title", L"filename", L"sections", L"pictures", L"date"
	};

	const FileProperty FilePropertyReference[kPropertyListCount] = {
		FileProperty::Open, FileProperty::Close,
		FileProperty::Title, FileProperty::FileName, FileProperty::Sections, FileProperty::Pictures, FileProperty::Date
	};

    FileProperty GetInputProperty(const std::wstring);

public:

	std::vector<HistoryItem*> History;

    HistoryHandler();

    void Add(const std::wstring, const std::wstring, const std::wstring, int, int);

	bool Load(const std::wstring);

	bool Save(const std::wstring);
};