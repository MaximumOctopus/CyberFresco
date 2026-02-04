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

#include "PageGenerator.h"

#include "Formatting.h"


PageGenerator::PageGenerator(const std::wstring exepath)
{
    RunFrom = exepath;
}


void PageGenerator::Clear()
{
	Files.clear();
}


bool PageGenerator::IndexTheme(const std::wstring file_name, Album* album, CyberTheme *theme, bool preview)
{
	std::ofstream file(file_name);

	if (file)
	{
		file << Formatting::to_utf8(L"<html><head>\n");

		if (preview)
		{
			file << Formatting::to_utf8(L"<title>Index Theme Preview</title>\n");
		}
		else
		{
			file << Formatting::to_utf8(L"<title>Album Index, " + theme->Name + L"</title>\n");
		}

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
		file << Formatting::to_utf8(L".style3 {font-size: " + theme->Attributes[2].FontSize + L"px; font-family: Verdana, Arial, Helvetica, sans-serif; color=#" + theme->Attributes[2].FontColour + L";}\n");
		file << Formatting::to_utf8(L"-->\n");
		file << Formatting::to_utf8(L"</style></head>\n");

		file << Formatting::to_utf8(L"<body bgcolor=\"#" + theme->Attributes[2].Colour + L"\">\n");
		file << Formatting::to_utf8(L"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
		file << Formatting::to_utf8(L"<tr>\n");

		if (!theme->Attributes[0].Graphic.empty())
		{
			file << Formatting::to_utf8(L"<td background=\"i1.jpg\" bgcolor=\"#" + theme->Attributes[0].Colour + L"\"><span class=\"style1\">" + album->Title + L"</span></td>\n");
		}
		else
		{
			file << Formatting::to_utf8(L"<td bgcolor=\"#" + theme->Attributes[0].Colour + L"\"><span class=\"style1\">" + album->Title + L"</span></td>\n");
		}

		file << Formatting::to_utf8(L"</tr></table>\n");

		std::wstring s = L"";

		if (!album->HomeLink.empty())
		{
			s += L" | <a href=\"" + album->HomeLink + L"\">home</a>";
		}

		s += L" | <b>index</b>";

		file << Formatting::to_utf8(L"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
		file << Formatting::to_utf8(L"<tr>\n");

		if (theme->Attributes[1].Graphic != L"")
		{
			file << Formatting::to_utf8(L"<td background=\"i2.jpg\" bgcolor=\"#" + theme->Attributes[1].Colour + L"\"><span class=\"style2\">" + s + L"</span></td>\n");
		}
		else
		{
			file << Formatting::to_utf8(L"<td bgcolor=\"#" + theme->Attributes[1].Colour + L"\"><span class=\"style2\">" + s + L"</span></td>\n");
		}

		file << Formatting::to_utf8(L"</tr></table>\n");

		file << Formatting::to_utf8(L"<table width=\"100%\"  border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
		file << Formatting::to_utf8(L"<tr>\n");
		file << Formatting::to_utf8(L"<td>&nbsp;</td>\n");
		file << Formatting::to_utf8(L"</tr></table>\n");

		for (int t = 0; t < album->Sections.size(); t++)
		{
			file << Formatting::to_utf8(L"<table width=\"" + std::to_wstring(400 + album->Sections[t]->ThumbnailsWidth) + L"\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n");
			file << Formatting::to_utf8(L"<tr>\n");

			if (preview)
			{
				file << Formatting::to_utf8(L"<td width=\"" + std::to_wstring(album->Sections[t]->ThumbnailsWidth) + L"\"><img src=\"" + Formatting::MakeWebFileLink(RunFrom + L"preview\idx" + std::to_wstring(t + 1) + L".jpg") + L"\" border=\"0\"></td>\n");
			}
			else
			{
				file << Formatting::to_utf8(L"<td width=\"" + std::to_wstring(album->Sections[t]->ThumbnailsWidth) + L"\"><a href=\"" + album->Sections[t]->Name + L"/p1.html\"><img src=\"idx" + std::to_wstring(t + 1) + L".jpg\" border=\"0\"></a></td>\n");
			}

			file << Formatting::to_utf8(L"<td width=\"2\">&nbsp;</td>\n");
			file << Formatting::to_utf8(L"<td width=\"400\" valign=\"top\"><span class=\"style3\"><a class=\"bot\" href=\"" + album->Sections[t]->Name + L"/p1.html\">" + album->Sections[t]->Description + L"</a></span></td>\n");
			file << Formatting::to_utf8(L"</tr>\n");
			file << Formatting::to_utf8(L"<tr>\n");
			file << Formatting::to_utf8(L"<td colspan=\"3\">&nbsp;</td>\n");
			file << Formatting::to_utf8(L"</tr></table>\n");
		}

		file << Formatting::to_utf8(L"</body></html>\n");

		file.close();

		return true;
	}

	return false;
}


bool PageGenerator::Page(Album *album, CyberTheme *theme, int sectionindex,
						 int maxpages, int pagenum, int startimage, int endimage, int headercol, int footercol,
						 const std::wstring file_name, bool preview, bool simple)
{
	std::ofstream file(file_name);

	if (file)
	{
		int CurrentImage = startimage;

		file << Formatting::to_utf8(L"<html><head>\n");
		file << Formatting::to_utf8(L"<title>" + album->Sections[sectionindex]->Caption + L": page #" + std::to_wstring(pagenum) + L"</title>\n");
		file << Formatting::to_utf8(L"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\n");

		//for t:=0 to lbMetaTags.Count-1 do
		//	file << Formatting::to_utf8(L"f, lbMetaTags.Items[t]);

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
		file << Formatting::to_utf8(L".style3 {font-size: " + theme->Attributes[2].FontSize + L"px; font-family: Verdana, Arial, Helvetica, sans-serif; color=#" + theme->Attributes[2].FontColour + L";}\n");
		file << Formatting::to_utf8(L".style4 {font-size: 10px; font-family: Verdana, Arial, Helvetica, sans-serif; color=#'+HexColourToString(headercol)+'}\n");
		file << Formatting::to_utf8(L".style5 {font-size: 10px; font-family: Verdana, Arial, Helvetica, sans-serif; color=#'+HexColourToString(footercol)+'}\n");
		file << Formatting::to_utf8(L".stylex {font-size: 10px; font-family: Verdana, Arial, Helvetica, sans-serif; color=#000000;}\n");
		file << Formatting::to_utf8(L"-->\n");
		file << Formatting::to_utf8(L"</style></head>\n");

		file << Formatting::to_utf8(L"<body bgcolor=\"#" + theme->Attributes[2].Colour + L"\">\n");
		file << Formatting::to_utf8(L"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
		file << Formatting::to_utf8(L"<tr>\n");

		if (!theme->Attributes[0].Graphic.empty())
		{
			file << Formatting::to_utf8(L"<td background=\"i1.jpg\" bgcolor=\"#" + theme->Attributes[0].Colour + L"\"><span class=\"style1\">" + album->Sections[sectionindex]->Caption + L"</span></td>\n");
		}
		else
		{
			file << Formatting::to_utf8(L"<td bgcolor=\"#" + theme->Attributes[0].Colour + L"\"><span class=\"style1\">" + album->Sections[sectionindex]->Caption + L"</span></td>\n");
		}

		file << Formatting::to_utf8(L"</tr></table>\n");

		std::wstring s = L"";

		if (!album->HomeLink.empty())
		{
			s += L" | <a class=\"bot\" href=\"" + album->HomeLink + L"\">home</a>";
		}

		s += L" | <a class=\"bot\" href=\"../" + album->IndexFileName + L"\">index</a>";

		if (maxpages == 1)
		{
			s += L" | Page 1 of 1 |";
		}
		else
		{
			if (pagenum == 1)
			{
				s += L" | back - ";
			}
			else
			{
				s += L" | <a class=\"bot\" href=\"" + Formatting::ReturnPageFileName(pagenum - 1) + L"\">back</a> - ";
			}

			for (int t = 1; t <= maxpages; t++)
			{
				if (pagenum == t)
				{
					s += L"<b>" + std::to_wstring(t) + L"</b> ";
				}
				else
				{
					s += L"<a class=\"bot\" href=\"" + Formatting::ReturnPageFileName(t) + L"\">" + std::to_wstring(t) + L"</a> ";
				}

				if (t == maxpages)
				{
					s += L" - ";
				}
			}

			if (pagenum == maxpages)
			{
				s += L" next | ";
			}
			else
			{
				s += L" <a class=\"bot\" href=\"" + Formatting::ReturnPageFileName(pagenum + 1) + L"\">next</a> | ";
			}
		}

		file << Formatting::to_utf8(L"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
		file << Formatting::to_utf8(L"<tr>\n");

		if (!theme->Attributes[1].Graphic.empty())
		{
			file << Formatting::to_utf8(L"<td background=\"i2.jpg\" bgcolor=\"#" + theme->Attributes[1].Colour + L"\"><span class=\"style2\">" + s + L"</span></td>\n");
		}
		else
		{
			file << Formatting::to_utf8(L"<td bgcolor=\"#" + theme->Attributes[1].Colour + L"\"><span class=\"style2\">" + s + L"</span></td>\n");
		}

		file << Formatting::to_utf8(L"</tr></table>\n");

		file << Formatting::to_utf8(L"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");

		if (album->Sections[sectionindex]->ShowPageHeader)
		{
			file << Formatting::to_utf8(L"<tr><td>&nbsp;</td></tr>\n");
			file << Formatting::to_utf8(L"<tr align=\"center\">\n");
			file << Formatting::to_utf8(L"<td><span class=\"style4\">" + album->Sections[sectionindex]->PageHeaderText + L"</span></td>\n");
			file << Formatting::to_utf8(L"</tr>");
			file << Formatting::to_utf8(L"<tr><td>&nbsp;</td></tr>\n");
		}
		else
		{
			file << Formatting::to_utf8(L"<tr><td>&nbsp;</td></tr>\n");
		}

		file << Formatting::to_utf8(L"</table>\n");

		file << Formatting::to_utf8(L"<table width=\"" + std::to_wstring((album->Sections[sectionindex]->ThumbnailsWidth * album->Sections[sectionindex]->ThumbnailsAcrossPage)+(album->Sections[sectionindex]->ThumbnailsAcrossPage * 2)) + L"\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");

		while (CurrentImage <= endimage)
		{
			file << Formatting::to_utf8(L"<tr>\n");

			for (int t = 0; t < album->Sections[sectionindex]->ThumbnailsAcrossPage; t++)
			{
				if (CurrentImage <= endimage)
				{
					if (preview)
					{
						if (simple)
						{
							file << Formatting::to_utf8(L"<td width=\"202\"><img src=\"" + std::to_wstring(CurrentImage + 1) + L"-t.jpg\" border=\"0\"></td>\n");
						}
						else
						{
							file << Formatting::to_utf8(L"<td width=\"202\"><a href=\"p" + std::to_wstring(CurrentImage + 1) + L".jpg\"><img src=\"" + std::to_wstring(CurrentImage + 1) + L"-t.jpg\" border=\"0\"></a></td>\n");
						}
					}
					else	// create for local
					{
						if (simple)
						{
							file << Formatting::to_utf8(L"<td width=\"202\"><img src=\"" + std::to_wstring(CurrentImage + 1) + L"-t.jpg\" border=\"0\"></td>\n");
						}
						else
						{
							file << Formatting::to_utf8(L"<td width=\"202\"><a href=\"" + Formatting::MakeWebFileLink(album->Sections[sectionindex]->Images[CurrentImage]) + L"\"><img src=\"" + std::to_wstring(CurrentImage + 1) + L"-t.jpg\" border=\"0\"></a></td>\n");
						}
                    }
				}

				CurrentImage++;
			}

			file << Formatting::to_utf8(L"<tr>\n");
		}

		file << Formatting::to_utf8(L"</table>\n");

		file << Formatting::to_utf8(L"<table width=\"100%\"  border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
		file << Formatting::to_utf8(L"<tr><td>&nbsp;</td></tr>\n");
		file << Formatting::to_utf8(L"<tr><td>&nbsp;</td></tr>\n");
		file << Formatting::to_utf8(L"<tr align=\"center\">\n");
		file << Formatting::to_utf8(L"<td><span class=\"style3\">" + s + L"</span></td>\n");
		file << Formatting::to_utf8(L"</tr>\n");

		if (album->Sections[sectionindex]->ShowPageFooter)
		{
			file << Formatting::to_utf8(L"<tr><td>&nbsp;</td></tr>\n");
			file << Formatting::to_utf8(L"<tr align=\"center\">\n");
			file << Formatting::to_utf8(L"<td><span class=\"style5\">" + album->Sections[sectionindex]->PageFooterText + L"</span></td>\n");
			file << Formatting::to_utf8(L"</tr>\n");
			file << Formatting::to_utf8(L"<tr><td>&nbsp;</td></tr>\n");
		}
		else
		{
			file << Formatting::to_utf8(L"<tr><td>&nbsp;</td></tr>\n");
		}

		file << Formatting::to_utf8(L"<tr>\n");
		file << Formatting::to_utf8(L"<td>&nbsp;</td>\n");
		file << Formatting::to_utf8(L"</tr>\n");
		file << Formatting::to_utf8(L"<tr align=\"right\">\n");
		file << Formatting::to_utf8(L"<td><span class=\"stylex\">Generated with <a class=\"bot\" href=\"https://github.com/MaximumOctopus/CyberFresco\">CyberFresco</a>.</span></td>\n");
		file << Formatting::to_utf8(L"</tr>\n");

		file << Formatting::to_utf8(L"</table>\n");

		file << Formatting::to_utf8(L"</body></html>\n");

		file.close();

		return true;
	}

	return false;
}
