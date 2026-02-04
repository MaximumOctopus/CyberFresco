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

#include <fstream>

#include "Album.h"
#include "Formatting.h"


Album::Album()
{
	Name = L"My Album";
	Title = L"My Album";

	Section *s = new Section();

	s->Caption = L"Section #1";

    Sections.push_back(s);
}


void Album::Clear()
{
	Name = L"My Album";
	Title = L"My Album";
	WebsiteURL = L"";

	FTPHost = L"";
	FTPAlbumRoot = L"";
	FTPUserName = L"";
	FTPPassword = L"";

	IndexFileName = L"index.html";

	ThemeName = L"";

	HomeLink = L"";
	ThumbnailSize = 275;

	ChangesPending = false;

    ProjectFileName = L"";

	Sections.clear();
	Errors.clear();
}


void Album::AddSection(const std::wstring caption)
{
	Section *s = new Section();

	s->Name = caption;
    s->Caption = caption;

	Sections.push_back(s);
}


bool Album::Load(const std::wstring file_name)
{
	Clear();

	std::wifstream file(file_name);

	if (file)
	{
        std::wstring s = L"";

		FileLocation Location = FileLocation::None;

		while (std::getline(file, s))
		{
			if (s != L"")
			{
				if (s[0] == L'/' || s[0] == L'#')
				{
					// comment, do nothing
				}
				else
				{
					auto equals = s.find(L'=');
					FileProperty PropertyName = FileProperty::None;

					std::wstring key = s.substr(0, equals);
					std::wstring value = s.substr(equals + 1);

					if (equals == std::wstring::npos)
					{
						key = s;
					}

					PropertyName = GetInputProperty(key);

					switch (PropertyName)
					{
					case FileProperty::None:
						break;
					case FileProperty::Album:
						Location = FileLocation::Album;
						break;
					case FileProperty::Section:
					{
						Location = FileLocation::Section;

						Section *s = new Section();

						Sections.push_back(s);
						break;
					}
					case FileProperty::Name:
						Name = value;
						break;
					case FileProperty::Title:               // [album] fields
						Title = value;
						break;
					case FileProperty::WebsiteURL:
						WebsiteURL = value;
						break;
					case FileProperty::FTPHost:
						FTPHost = value;
						break;
					case FileProperty::FTPAlbumRoot:
						FTPAlbumRoot = value;
						break;
					case FileProperty::FTPUserName:
						FTPUserName = value;
						break;
					case FileProperty::FTPPassword:
						FTPPassword = value;
						break;
					case FileProperty::HomeLink:
						HomeLink = value;
						break;
					case FileProperty::SectionCount:
						break;
					case FileProperty::ThumbnailSize:
						ThumbnailSize = stoi(value);
						break;
					case FileProperty::AlbumThemeName:
						ThemeName = value;
						break;
					case FileProperty::LastExportFolder:
						LastExportFolder = value;
                        break;
					case FileProperty::SectionName:         // [section] fields
						Sections.back()->Name = value;
						break;
					case FileProperty::Caption:
						Sections.back()->Caption = value;
						break;
					case FileProperty::Description:
						Sections.back()->Description = value;
						break;
					case FileProperty::Created:
						Sections.back()->Created = value;
						break;
					case FileProperty::LastUploaded:
						Sections.back()->LastUploaded = value;
						break;
					case FileProperty::ItemForIndex:
						Sections.back()->ImageForIndex = value;
						break;
					case FileProperty::ThumbnailsPerPage:
						Sections.back()->ThumbnailsPerPage = stoi(value);
						break;
					case FileProperty::ThumbnailsAcrossPage:
						Sections.back()->ThumbnailsAcrossPage = stoi(value);
						break;
					case FileProperty::ThumbnailWidth:
						Sections.back()->ThumbnailsWidth = stoi(value);
						break;
					case FileProperty::ThumbnailsOnly:
						Sections.back()->ThumbnailsOnly = stoi(value);
						break;
					case FileProperty::ThemeName:
						Sections.back()->ThemeName = value;
						break;
					case FileProperty::FileSize:
						Sections.back()->SizeOfImages = stoi(value);
						break;
					case FileProperty::Rebuild:
						Sections.back()->NeedToGenerateThumbnails = stoi(value);
						break;
					case FileProperty::ResizeImages:
						Sections.back()->ResizeImages = stoi(value);
						break;
					case FileProperty::ResizeWidth:
						Sections.back()->ResizeWidth = stoi(value);
						break;
					case FileProperty::ResizeHeight:
						Sections.back()->ResizeHeight = stoi(value);
						break;
					case FileProperty::ShowPageHeader:
						Sections.back()->ShowPageHeader = stoi(value);
						break;
					case FileProperty::PageHeaderText:
						Sections.back()->PageHeaderText = value;
						break;
					case FileProperty::PageHeaderColour:
						Sections.back()->PageHeaderColour = stoi(value);
						break;
					case FileProperty::ShowPageFooter:
						Sections.back()->ShowPageFooter = stoi(value);
						break;
					case FileProperty::PageFooterText:
						Sections.back()->PageFooterText = value;
						break;
					case FileProperty::PageFooterColour:
						Sections.back()->PageFooterColour = stoi(value);
						break;
					case FileProperty::Picture:
						Sections.back()->Images.push_back(value);
						break;
					}
				}
			}
		}

		ProjectFileName = file_name;

		file.close();

        return true;
	}

	return false;
}


Album::FileProperty Album::GetInputProperty(const std::wstring input)
{
	for (int t = 0; t < kPropertyListCount; t++)
	{
		if (input == FilePropertyList[t])
		{
			return FilePropertyReference[t];
		}
	}

	return FileProperty::None;
}


bool Album::Save(const std::wstring file_name)
{
	std::ofstream file(file_name);

	if (file)
	{
		file << Formatting::to_utf8(L"[Album]\n");

		file << Formatting::to_utf8(L"name=" + Name + L"\n");
		file << Formatting::to_utf8(L"title=" + Title + L"\n");
		file << Formatting::to_utf8(L"websiteurl=" + WebsiteURL + L"\n");
		file << Formatting::to_utf8(L"ftphost=" + FTPHost + L"\n");
		file << Formatting::to_utf8(L"ftpalbumroot=" + FTPAlbumRoot + L"\n");
		file << Formatting::to_utf8(L"ftpusername=" + FTPUserName + L"\n");
		file << Formatting::to_utf8(L"ftppassword=" + FTPPassword + L"\n");
		file << Formatting::to_utf8(L"homelink=" + HomeLink + L"\n");
		file << Formatting::to_utf8(L"sectioncount=" + std::to_wstring(Sections.size()) + L"\n");
		file << Formatting::to_utf8(L"thumbnailsize=" + std::to_wstring(ThumbnailSize) + L"\n");
		file << Formatting::to_utf8(L"albumthemename=" + ThemeName + L"\n");
		file << Formatting::to_utf8(L"lastexportfolder=" + LastExportFolder + L"\n");

		for (int t = 0; t < Sections.size(); t++)
		{
			file << Formatting::to_utf8(L"[Section]\n");

			file << Formatting::to_utf8(L"sectionname=" + Sections[t]->Name + L"\n");
			file << Formatting::to_utf8(L"caption=" + Sections[t]->Caption + L"\n");
			file << Formatting::to_utf8(L"description=" + Sections[t]->Description + L"\n");
			file << Formatting::to_utf8(L"created=" + Sections[t]->Created + L"\n");
			file << Formatting::to_utf8(L"lastuploaded=" + Sections[t]->LastUploaded + L"\n");
			file << Formatting::to_utf8(L"itemforindex=" + Sections[t]->ImageForIndex + L"\n");
			file << Formatting::to_utf8(L"thumbnailsperpage=" + std::to_wstring(Sections[t]->ThumbnailsPerPage) + L"\n");
			file << Formatting::to_utf8(L"thumbnailsacrosspage=" + std::to_wstring(Sections[t]->ThumbnailsAcrossPage) + L"\n");
			file << Formatting::to_utf8(L"thumbnailwidth=" + std::to_wstring(Sections[t]->ThumbnailsWidth) + L"\n");
			file << Formatting::to_utf8(L"thumbnailsonly=" + std::to_wstring(Sections[t]->ThumbnailsOnly) + L"\n");
			file << Formatting::to_utf8(L"resizeimages=" + std::to_wstring(Sections[t]->ResizeImages) + L"\n");
			file << Formatting::to_utf8(L"resizewidth=" + std::to_wstring(Sections[t]->ResizeWidth) + L"\n");
			file << Formatting::to_utf8(L"resizeheight=" + std::to_wstring(Sections[t]->ResizeHeight) + L"\n");
			file << Formatting::to_utf8(L"showpageheader=" + std::to_wstring(Sections[t]->ShowPageHeader) + L"\n");
			file << Formatting::to_utf8(L"pageheadertext=" + Sections[t]->PageHeaderText + L"\n");
			file << Formatting::to_utf8(L"pageheadercolour=" + std::to_wstring(Sections[t]->PageHeaderColour) + L"\n");
			file << Formatting::to_utf8(L"showpagefooter=" + std::to_wstring(Sections[t]->ShowPageFooter) + L"\n");
			file << Formatting::to_utf8(L"pagefootertext=" + Sections[t]->PageFooterText + L"\n");
			file << Formatting::to_utf8(L"pagefootercolour=" + std::to_wstring(Sections[t]->PageFooterColour) + L"\n");
			file << Formatting::to_utf8(L"themename=" + Sections[t]->ThemeName + L"\n");
			file << Formatting::to_utf8(L"filesize=" + std::to_wstring(Sections[t]->SizeOfImages) + L"\n");
			file << Formatting::to_utf8(L"rebuild=" + std::to_wstring(Sections[t]->NeedToGenerateThumbnails) + L"\n");

			for (int p = 0; p < Sections[t]->Images.size(); p++)
			{
				file << Formatting::to_utf8(L"picture=" + Sections[t]->Images[p] + L"\n");
			}
		}

		ProjectFileName = file_name;

		file.close();
	}

	return false;
}


bool Album::CreateFromFolder(const std::wstring folder)
{
	std::wstring filter = folder + L"*";

	Sections.clear();

	WIN32_FIND_DATAW file;

	HANDLE search_handle = FindFirstFileW(filter.c_str(), &file);

	if (search_handle != INVALID_HANDLE_VALUE)
	{
		do
		{
			if (file.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
			{
				if ((!lstrcmpW(file.cFileName, L".")) || (!lstrcmpW(file.cFileName, L"..")))
					continue;

				std::wstring s = folder + std::wstring(file.cFileName) + L"\\";

				Section *section = new Section();
				section->Name = file.cFileName;
				section->Caption = file.cFileName;

				Sections.push_back(section);

				AddImagesFromFolder(Sections.size() - 1, s);
			}

		} while (FindNextFileW(search_handle, &file));

		FindClose(search_handle);
	}

	return true;
}


void Album::AddImagesFromFolder(int index, const std::wstring folder)
{
	std::wstring filter = folder + L"*.jpg";

	WIN32_FIND_DATAW file;

	HANDLE search_handle = FindFirstFileW(filter.c_str(), &file);

	if (search_handle != INVALID_HANDLE_VALUE)
	{
		do
		{
			if (file.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
			{
			}
			else
			{
				std::wstring s = folder + L"\\" + file.cFileName;

				Sections[index]->Images.push_back(s);
			}

		} while (FindNextFileW(search_handle, &file));

		FindClose(search_handle);
	}
}


void Album::Relocate(const std::wstring old_folder, const std::wstring new_folder)
{
	for (int s = 0; s < Sections.size(); s++)
	{
		for (int p = 0; p < Sections[s]->Images.size(); p++)
		{
			if (Sections[s]->Images[p].find(old_folder) != std::wstring::npos)
			{
				Sections[s]->Images[p].replace(0, old_folder.length(), new_folder);
			}
		}
	}
}


void Album::CheckAllImagse()
{
	Errors.clear();

	for (int s = 0; s < Sections.size(); s++)
	{
		for (int p = 0; p < Sections[s]->Images.size(); p++)
		{
			if (!FileExists(Sections[s]->Images[p].c_str()))
			{
				Errors.push_back(Sections[s]->Images[p]);
			}
		}
	}
}


void Album::SetChangesPending()
{
	ChangesPending = true;
}


void Album::SetNoChangesPending()
{
	ChangesPending = false;
}
