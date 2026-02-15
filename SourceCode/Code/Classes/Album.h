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

#include "Section.h"


class Album
{
	static const int kPropertyListCount = 37;

	enum class FileLocation {
		None = 0, Album = 1, Section = 2
	};

	enum class FileProperty {
		None = 0, Album, Section, Name, Title, SectionName,
		WebsiteURL, FTPHost, FTPAlbumRoot, FTPUserName, FTPPassword,
		HomeLink, SectionCount, ThumbnailSize, AlbumThemeName, LastExportFolder,
		Caption, Description, Created, LastUploaded,
		ItemForIndex, ThumbnailsPerPage, ThumbnailsAcrossPage, ThumbnailWidth, ThumbnailsOnly,
		ThemeName, FileSize, Rebuild, ResizeImages, ResizeWidth , ResizeHeight ,
		ShowPageHeader, PageHeaderText, PageHeaderColour,
		ShowPageFooter, PageFooterText, PageFooterColour,
		Picture
	};

	const std::wstring FilePropertyList[kPropertyListCount] = {
		L"[Album]", L"[Section]",
		L"name", L"title", L"sectionname",
		L"websiteurl", L"ftphost", L"ftpalbumroot", L"ftpusername", L"ftppassword",
		L"homelink", L"sectioncount", L"thumbnailsize", L"albumthemename", L"lastexportfolder",
		L"caption", L"description", L"created", L"lastuploaded",
		L"itemforindex",
		L"thumbnailsperpage", L"thumbnailsacrosspage", L"thumbnailwidth", L"thumbnailsonly",
		L"themename", L"filesize", L"rebuild", L"resizeimages", L"resizewidth", L"resizeheight",
		L"showpageheader", L"pageheadertext", L"pageheadercolour",
		L"showpagefooter", L"pagefootertext", L"pagefootercolour",
		L"picture"
	};

	const FileProperty FilePropertyReference[kPropertyListCount] = {
		FileProperty::Album, FileProperty::Section,
		FileProperty::Name, FileProperty::Title, FileProperty::SectionName,
		FileProperty::WebsiteURL, FileProperty::FTPHost, FileProperty::FTPAlbumRoot, FileProperty::FTPUserName, FileProperty::FTPPassword,
		FileProperty::HomeLink, FileProperty::SectionCount, FileProperty::ThumbnailSize, FileProperty::AlbumThemeName, FileProperty::LastExportFolder,
		FileProperty::Caption, FileProperty::Description, FileProperty::Created, FileProperty::LastUploaded,
		FileProperty::ItemForIndex,
		FileProperty::ThumbnailsPerPage, FileProperty::ThumbnailsAcrossPage, FileProperty::ThumbnailWidth, FileProperty::ThumbnailsOnly,
		FileProperty::ThemeName , FileProperty::FileSize, FileProperty::Rebuild, FileProperty::ResizeImages, FileProperty::ResizeWidth, FileProperty::ResizeHeight,
     	FileProperty::ShowPageHeader, FileProperty::PageHeaderText, FileProperty::PageHeaderColour,
		FileProperty::ShowPageFooter, FileProperty::PageFooterText, FileProperty::PageFooterColour,
		FileProperty::Picture
	};

	FileProperty GetInputProperty(const std::wstring);

public:

	std::vector<Section*> Sections;

	std::vector<std::wstring> Errors;

	std::wstring Name = L"";
	std::wstring Title = L"";
	std::wstring WebsiteURL = L"";

	std::wstring FTPHost = L"";
	std::wstring FTPAlbumRoot = L"";
	std::wstring FTPUserName = L"";
	std::wstring FTPPassword = L"";

	std::wstring IndexFileName = L"index.html";

	std::wstring ThemeName = L"";

	std::wstring HomeLink = L"";
	int ThumbnailSize = 275;

	bool ChangesPending = false;

	std::wstring LastExportFolder = L"";

    std::wstring ProjectFileName = L"";

	Album();

	void AddEmptyAlbum();
	void Clear();

	bool Load(const std::wstring);
	bool Save(const std::wstring);

	bool CreateFromFolder(const std::wstring);
    void AddImagesFromFolder(int, const std::wstring);

	void AddSection(const std::wstring);

	void Relocate(const std::wstring, const std::wstring);

	void CheckAllImagse();

	void SetChangesPending();
	void SetNoChangesPending();
};
