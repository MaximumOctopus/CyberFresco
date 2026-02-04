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

#include "CyberThemeHandler.h"
#include "Formatting.h"
#include "Ini.h"


CyberThemeHandler::CyberThemeHandler(const std::wstring path)
{
	Load(path);
}


int CyberThemeHandler::GetIndexFromName(const std::wstring name)
{
	for (int t = 0; t < Themes.size(); t++)
	{
		if (Themes[t]->Name == name)
		{
			return t;
		}
	}

	return 0;
}


bool CyberThemeHandler::AddTheme(const std::wstring file_name)
{
	Ini* config = new Ini(file_name);

	if (config->Loaded)
	{
		std::wstring ThemeSections[3] = { L"Top", L"Middle", L"Bottom" };

		CyberTheme* theme = new CyberTheme();

		theme->Name = config->ReadString(L"Main", L"Name", L"Unknown");
		theme->Location = config->ReadString(L"Main", L"Location", L"Unknown");
		theme->Factory = config->ReadInteger(L"Main", L"Factory", 0);

		for (int t = 0; t < 3; t++)
		{
			theme->Attributes[t].Colour      = config->ReadString(ThemeSections[t], L"Colour", L"FFFFFF");
			theme->Attributes[t].FontColour  = config->ReadString(ThemeSections[t], L"FontColour", L"000000L");
			theme->Attributes[t].FontSize    = config->ReadString(ThemeSections[t], L"FontSize", L"12L");
			theme->Attributes[t].HoverColour = config->ReadString(ThemeSections[t], L"HoverColour", L"666666L");
			theme->Attributes[t].Graphic     = config->ReadString(ThemeSections[t], L"Graphic", L"");
		}

		Themes.push_back(theme);

		delete config;

		return true;
	}

	return false;
}


bool CyberThemeHandler::Load(const std::wstring path)
{
	Themes.clear();

    std::wstring filter = path + L"*";

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

				std::wstring s = path + std::wstring(file.cFileName) + L"\\this.theme";

				AddTheme(s);
			}

		} while (FindNextFileW(search_handle, &file));

		FindClose(search_handle);
	}

	return true;
}

//	AssignFile(tf, RunFrom+'themes\'+thisTheme.Location+'\preview.html');
bool CyberThemeHandler::BuildThemePreview(CyberTheme *theme, const std::wstring file_name)
{
	std::ofstream file(file_name);

	if (file)
	{
		file << Formatting::to_utf8(L"<html><head>\n");
		file << Formatting::to_utf8(L"<title>Theme Preview</title>\n");
		file << Formatting::to_utf8(L"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\n");
		file << Formatting::to_utf8(L"<style type=\"text/css\">\n");
		file << Formatting::to_utf8(L"<!--\n");
		file << Formatting::to_utf8(L"A:link {color:#" + theme->Attributes[1].FontColour + L"; text-decoration: none}\n");
		file << Formatting::to_utf8(L"A:visited {color:#" + theme->Attributes[1].FontColour + L"; text-decoration: none}\n");
		file << Formatting::to_utf8(L"A:hover {color:#" + theme->Attributes[1].HoverColour + L"; text-decoration: underline}\n");
		file << Formatting::to_utf8(L"A:active {color:#" + theme->Attributes[1].FontColour + L"; text-decoration: none}\n");
		file << Formatting::to_utf8(L"A.bot:link {color:#" + theme->Attributes[2].FontColour + L"; text-decoration: none}\n");
		file << Formatting::to_utf8(L"A.bot:visited {color:#" + theme->Attributes[2].FontColour + L"; text-decoration: none}\n");
		file << Formatting::to_utf8(L"A.bot:hover {color:#" + theme->Attributes[2].HoverColour + L"; text-decoration: underline}\n");
		file << Formatting::to_utf8(L"A.bot:active {color:#" + theme->Attributes[2].FontColour + L"; text-decoration: none}\n");
		file << Formatting::to_utf8(L"body {margin-left: 0px; margin-top: 0px;}\n");
		file << Formatting::to_utf8(L".style1 {font-size: " + theme->Attributes[0].FontSize + L"px; font-family: Verdana, Arial, Helvetica, sans-serif; color=#" + theme->Attributes[0].FontColour + L";}\n");
		file << Formatting::to_utf8(L".style2 {font-size: " + theme->Attributes[1].FontSize + L"px; font-family: Verdana, Arial, Helvetica, sans-serif; color=#" + theme->Attributes[1].FontColour + L";}\n");
		file << Formatting::to_utf8(L"-->\n");
		file << Formatting::to_utf8(L"</style></head>\n");

		file << Formatting::to_utf8(L"<body bgcolor=\"#" + theme->Attributes[2].Colour + L"\">\n");

		// ===========================================================================

		file << Formatting::to_utf8(L"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");

		file << Formatting::to_utf8(L"<tr>\n");

		if (theme->Attributes[0].Graphic != L"")
		{
			file << Formatting::to_utf8(L"<td background=\"" + Formatting::MakeWebFileLink(theme->Attributes[0].Graphic) + L"\" bgcolor=\"#" + theme->Attributes[0].Colour + L"\"><span class=\"style1\">Theme Preview</span></td>\n");
		}
		else
		{
			file << Formatting::to_utf8(L"<td bgcolor=\"#" + theme->Attributes[0].Colour + L"\"><span class=\"style1\">Theme Preview</span></td>\n");
		}

		file << Formatting::to_utf8(L"</tr></table>\n");

		// ===========================================================================

		std::wstring s = L" | <a href=\"preview.html\">home</a> | <a href=\"preview.html\">index</a> | <a href=\"preview.html\">back</a> - <a href=\"preview.html\">1</a> <b>2</b> <a href=\"preview.html\">3</a> - <a href=\"preview.html\">next</a>";

		file << Formatting::to_utf8(L"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
		file << Formatting::to_utf8(L"<tr>\n");

		if (theme->Attributes[1].Graphic != L"")
		{
			file << Formatting::to_utf8(L"<td background=\"" + Formatting::MakeWebFileLink(theme->Attributes[1].Graphic) + L"\" bgcolor=\"#" + theme->Attributes[1].Colour + L"\"><span class=\"style2\">" + s +L"</span></td>\n");
		}
		else
		{
			file << Formatting::to_utf8(L"<td bgcolor=\"#" + theme->Attributes[1].Colour + L"\"><span class=\"style2\">" + s + L"</span></td>\n");
		}

		file << Formatting::to_utf8(L"</tr></table>\n");

		// ===========================================================================

		file << Formatting::to_utf8(L"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
		file << Formatting::to_utf8(L"<tr>&nbsp;</td></tr>\n");
		file << Formatting::to_utf8(L"</table>\n");

		file << Formatting::to_utf8(L"<table width=\"" + std::to_wstring((200 * 4) + (3 * 2)) + L"\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");

		file << Formatting::to_utf8(L"</table>\n");
		file << Formatting::to_utf8(L"</body></html>\n");

		file.close();

		return true;
	}

	return false;
}

//    AssignFile(tf, RunFrom+'themes\'+thisTheme.Location+'\indexpreview.html');
bool CyberThemeHandler::BuildIndexThemePreview(CyberTheme *theme, const std::wstring file_name, const std::wstring runfrom)
{
	std::ofstream file(file_name);

	if (file)
	{
		file << Formatting::to_utf8(L"<html><head>\n");
		file << Formatting::to_utf8(L"<title>Index Theme Preview</title>\n");
		file << Formatting::to_utf8(L"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\n");
		file << Formatting::to_utf8(L"<style type=\"text/css\">\n");
		file << Formatting::to_utf8(L"<!--\n");
		file << Formatting::to_utf8(L"'A:link {color:#" + theme->Attributes[1].FontColour + L"; text-decoration: none}\n");
		file << Formatting::to_utf8(L"A:visited {color:#" + theme->Attributes[1].FontColour + L"; text-decoration: none}\n");
		file << Formatting::to_utf8(L"A:hover {color:#" + theme->Attributes[1].HoverColour + L"; text-decoration: underline}\n");
		file << Formatting::to_utf8(L"A:active {color:#" + theme->Attributes[1].FontColour + L"; text-decoration: none}\n");
		file << Formatting::to_utf8(L"A.bot:link {color:#" + theme->Attributes[2].FontColour + L"; text-decoration: none}\n");
		file << Formatting::to_utf8(L"A.bot:visited {color:#" + theme->Attributes[2].FontColour + L"; text-decoration: none}\n");
		file << Formatting::to_utf8(L"A.bot:hover {color:#" + theme->Attributes[2].HoverColour + L"; text-decoration: underline}\n");
		file << Formatting::to_utf8(L"A.bot:active {color:#" + theme->Attributes[2].FontColour + L"; text-decoration: none}\n");
		file << Formatting::to_utf8(L"body {margin-left: 0px; margin-top: 0px;}\n");
		file << Formatting::to_utf8(L".style1 {font-size: " + theme->Attributes[0].FontSize + L"px; font-family: Verdana, Arial, Helvetica, sans-serif; color=#" + theme->Attributes[0].FontColour + L";}\n");
		file << Formatting::to_utf8(L".style2 {font-size: " + theme->Attributes[1].FontSize + L"px; font-family: Verdana, Arial, Helvetica, sans-serif; color=#" + theme->Attributes[1].FontColour + L";}\n");
		file << Formatting::to_utf8(L".style3 {font-size: " + theme->Attributes[2].FontSize + L"px; font-family: Verdana, Arial, Helvetica, sans-serif; color=#" + theme->Attributes[2].FontColour + L";}\n");
		file << Formatting::to_utf8(L"-->\n");
		file << Formatting::to_utf8(L"</style></head>\n");

		// ===========================================================================

		file << Formatting::to_utf8(L"<body bgcolor=\"#" + theme->Attributes[2].Colour + L"\">\n");
		file << Formatting::to_utf8(L"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
		file << Formatting::to_utf8(L"<tr>\n");

		if (theme->Attributes[0].Graphic != L"")
		{
			file << Formatting::to_utf8(L"<td background=\"" + Formatting::MakeWebFileLink(theme->Attributes[0].Graphic) + L"\" bgcolor=\"#" + theme->Attributes[0].Colour + L"\"><span class=\"style1\">Theme Preview</span></td>\n");
		}
		else
		{
			file << Formatting::to_utf8(L"<td bgcolor=\"#" + theme->Attributes[0].Colour + L"\"><span class=\"style1\">Theme Preview</span></td>\n");
		}

		file << Formatting::to_utf8(L"</tr></table>\n");

		// ===========================================================================

		std::wstring s = L" | <a href=\"indexpreview.html\">home</a> | <a href=\"indexpreview.html\">index</a> |";

		file << Formatting::to_utf8(L"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
		file << Formatting::to_utf8(L"<tr>\n");

		if (theme->Attributes[1].Graphic != L"")
		{
			file << Formatting::to_utf8(L"<td background=\"" + Formatting::MakeWebFileLink(theme->Attributes[1].Graphic) + L"\" bgcolor=\"#" + theme->Attributes[1].Colour + L"\"><span class=\"style2\">" + s + L"</span></td>\n");
		}
		else
		{
			file << Formatting::to_utf8(L"<td bgcolor=\"#" + theme->Attributes[1].Colour + L"\"><span class=\"style2\">" + s + L"</span></td>\n");
		}

		file << Formatting::to_utf8(L"</tr></table>\n");

		// ===========================================================================

		file << Formatting::to_utf8(L"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
		file << Formatting::to_utf8(L"<tr><td>&nbsp;</td></tr>\n");
		file << Formatting::to_utf8(L"</table>\n");

		for (int t = 0; t < 3; t++)
		{
			file << Formatting::to_utf8(L"<table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n");
			file << Formatting::to_utf8(L"<tr>\n");
			file << Formatting::to_utf8(L"<td width=\"200\"><img src=\"" + Formatting::MakeWebFileLink(runfrom + L"data\\itp" + std::to_wstring(t) + L".jpg") + L"\" width=\"200\" height=\"160\"></td>\n");
			file << Formatting::to_utf8(L"<td width=\"2\">&nbsp;</td>\n");
			file << Formatting::to_utf8(L"<td width=\"400\"><span class=\"style3\"><a class=\"bot\" href=\"" + Formatting::MakeWebFileLink(runfrom + L"themes\\" + theme->Location + L"\\indexpreview.html") + L"\">This an index preview, for this theme.</a></span></td>\n");
			file << Formatting::to_utf8(L"</tr>\n");
			file << Formatting::to_utf8(L"<tr>\n");
			file << Formatting::to_utf8(L"<td colspan=\"3\">&nbsp;</td>\n");
			file << Formatting::to_utf8(L"</tr>\n");
			file << Formatting::to_utf8(L"</table>\n");
		}

		file << Formatting::to_utf8(L"</body></html>\n");

		file.close();

		return true;
	}

	return false;
}


bool CyberThemeHandler::CopyFilesTo(const std::wstring ThemeName, const std::wstring folder)
{
	int theme = GetIndexFromName(ThemeName);

	for (int t = 0; t < 3; t++)
	{
		if (Themes[theme]->Attributes[t].Graphic != L"")
		{
  //	  CopyFile(PChar(ThemeList[cbAIPTheme.ItemIndex].ThemeParts[t].graphic), PChar(path+'i'+IntToStr(t)+'.jpg'), FALSE);
		}
	}

	return true;
}
