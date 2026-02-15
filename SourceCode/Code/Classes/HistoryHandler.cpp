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

#include "Formatting.h"
#include "HistoryHandler.h"


HistoryHandler::HistoryHandler()
{
}


void HistoryHandler::Add(const std::wstring title, const std::wstring file_name, const std::wstring date, int sections, int pictures)
{
	//
}


bool HistoryHandler::Load(const std::wstring file_name)
{
	History.clear();

	std::wifstream file(file_name);

	if (file)
	{
		std::wstring s = L"";

		std::wstring title = L"";
		std::wstring file_name = L"";
		std::wstring date = L"";
		int sections = 0;
		int pictures = 0;

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
					case FileProperty::Open:
						title = L"";
						file_name = L"";
						date = L"";
						sections = 0;
						pictures = 0;
						break;
					case FileProperty::Close:
                        Add(title, file_name, date, sections, pictures);
						break;
					case FileProperty::Title:
						title = value;
						break;
					case FileProperty::FileName:
						file_name = value;
						break;
					case FileProperty::Sections:
                        sections = stoi(value);
						break;
					case FileProperty::Pictures:
						pictures = stoi(value);
						break;
					case FileProperty::Date:
						date = value;
						break;
					}
				}
			}
		}

		file.close();

		return true;
	}

	return false;
}


HistoryHandler::FileProperty HistoryHandler::GetInputProperty(const std::wstring input)
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


bool HistoryHandler::Save(const std::wstring file_name)
{
	std::ofstream file(file_name);

	if (file)
	{
		for (int t = 0; t < History.size(); t++)
		{
			file << Formatting::to_utf8(L"{\n");

			file << Formatting::to_utf8(L"title=" + History[t]->Title + L"\n");
			file << Formatting::to_utf8(L"filename=" + History[t]->FileName + L"\n");
			file << Formatting::to_utf8(L"sections=" + std::to_wstring(History[t]->Sections) + L"\n");
			file << Formatting::to_utf8(L"pictures=" + std::to_wstring(History[t]->Pictures) + L"\n");
			file << Formatting::to_utf8(L"date=" + History[t]->Date + L"\n");

			file << Formatting::to_utf8(L"}\n");
		}

		file.close();

		return true;
	}

	return false;
}
