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


class Section
{

public:

	std::vector<std::wstring> Images;
	std::vector<std::wstring> ImageStatus;

    std::wstring Name = L"";
	std::wstring Caption = L"";
	std::wstring Description = L"";
	unsigned __int64 SizeOfImages = 0;

	std::wstring Created = L"";

	std::wstring LastUploaded = L"";

	bool ResizeImages = false;
	int ResizeWidth = 1024;
	int ResizeHeight = 768;

	std::wstring ImageForIndex = L"";
	std::wstring ThemeName = L"";
	int ThumbnailsPerPage = 30;
	int ThumbnailsAcrossPage = 3;
	int ThumbnailsWidth = 275;
	bool ThumbnailsOnly = false;

	bool NeedToGenerateThumbnails = false;
	int LastPage = 1;

	bool ShowPageHeader = true;
	std::wstring PageHeaderText = L"";
	int PageHeaderColour = 0;
	bool ShowPageFooter = false;
	std::wstring PageFooterText = L"";
	int PageFooterColour = 0;

    bool Generate = true;

	// MetaTags : TStringList;

	Section();

	void GetSizeOfFiles();

    std::wstring GetThumbnailFileName();

    bool HasValidImages();
};
