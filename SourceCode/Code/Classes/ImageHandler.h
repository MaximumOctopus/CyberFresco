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


class ImageHandler
{

public:

	ImageHandler();

	void GenerateThumbnail(int, const std::wstring, const std::wstring);
    void ResizeImage(int, int, const std::wstring, const std::wstring);
};