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

#include <string>
#include <windows.h>
#include <SysUtils.hpp>

#include "Formatting.h"


namespace Formatting
{
	std::wstring AddLeadingSpace(std::wstring input, int length)
	{
		if (input.length() == length)
		{
			return input;
		}
		else if (input.length() < length)
		{
			for (auto t = input.length(); t < length; t++)
			{
				input.insert(input.begin(), L' ');
			}

			return input;
		}

		return input;
	}


	std::wstring AddTrailingSpace(std::wstring input, int length)
	{
		if (input.length() == length)
		{
			return input;
		}
		else if (input.length() < length)
		{
			for (auto t = input.length(); t < length; t++)
			{
				input += L' ';
			}

			return input;
		}

		return input;
	}


	std::wstring LDToStr(long double ld)
	{
		return FloatToStr(ld).c_str();
	}


	std::wstring ReturnPageFileName(int pagenum)
	{
		//if pagenum=1 then
		//    Result:='index.html'
		//  else
		return L"p" + std::to_wstring(pagenum) + L".html";
	}


	std::wstring MakeWebFileLink(std::wstring url)
	{
		for (int t = 0; t < url.length(); t++)
		{
			if (url[t] == L':')
			{
				url[t] = L'|';
			}

			if (url[t] == L'\\')
			{
				url[t] = L'/';
			}
		}

		return L"file:///" + url;
	}


	std::wstring LeadingCharacters(int count, std::wstring leading, std::wstring oldtext)
	{   /*
		if (oldtext.length() >= count)
		{
			return oldtext
		}

		s:='';
		for t:=length(oldtext) to num-1 do
		  s:=s+leadingchar;

		Result:=s+oldtext; */
		return L"";
	}


	std::wstring RemoveTrailingSlash(const std::wstring)
	{ /*
		 var
	  t : integer;
	  news : string;

		 begin
		  news:=s;

		  if s<>'' then begin
			if (s[length(s)]='\') or (s[length(s)]='/') then begin
			  news:='';

			  for t:=1 to length(s)-1 do
				news:=news+s[t];
			end;
		  end;

		  Result:=news;    */
		return L"";
	}


	std::wstring HexColourToString(int colour)
	{
        return L"to do";
	}


	int StringToHexColour(const std::wstring)
	{
        return 0;
	}


    // utf8 output magic
    std::string to_utf8(const std::wstring& str)
    {
        return to_utf8(str.c_str(), (int)str.size());
    }


    std::string to_utf8(const wchar_t* buffer, int len)
    {
        int nChars = ::WideCharToMultiByte(
            CP_UTF8,
            0,
            buffer,
            len,
            NULL,
            0,
            NULL,
            NULL);
        if (nChars == 0) return "";

        std::string newbuffer;

        newbuffer.resize(nChars);
        ::WideCharToMultiByte(
            CP_UTF8,
            0,
            buffer,
            len,
            const_cast<char*>(newbuffer.c_str()),
            nChars,
            NULL,
            NULL);

        return newbuffer;
    }
}