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

#include "Section.h"


Section::Section()
{
}


void Section::GetSizeOfFiles()
{/*
 var
  t : integer;
  fsize : longint;
  fb : File of Byte;
  newobjectdata : PSectionInfo;

 begin
  fsize:=0;

  for t:=0 to lbPictureList.Items.Count-1 do begin
	AssignFile(fb, lbPictureList.Items[t]);
	Reset(fb);

	fsize:=fsize+FileSize(fb);

	CloseFile(fb);
  end;

  if currentsection<>NIL then begin
	New(newobjectdata);
	newobjectdata:=currentsection.Data;
	newobjectdata^.SizeOfImages:=fsize;
	currentsection.Data:=newobjectdata;
  end; */
}


std::wstring Section::GetThumbnailFileName()
{
	if (ImageForIndex.empty())
	{
		return Images[0];
	}

    return ImageForIndex;
}


bool Section::HasValidImages()
{
	if (Images.size() != 0)
	{
		return true;
	}

    return false;
}
