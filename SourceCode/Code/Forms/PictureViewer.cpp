//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "PictureViewer.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmPictureViewer *frmPictureViewer;
//---------------------------------------------------------------------------
__fastcall TfrmPictureViewer::TfrmPictureViewer(TComponent* Owner)
	: TForm(Owner)
{
}


void TfrmPictureViewer::Clear()
{
	cbPictures->Items->Clear();
}


void TfrmPictureViewer::Add(const std::wstring file_name)
{
    cbPictures->Items->Add(file_name.c_str());
}


void TfrmPictureViewer::ShowImage()
{
/*  Cursor:=crHourGlass;

  if FileExists(cbPictures.Items[imageidx]) then begin
	iView.Picture.LoadFromFile(cbPictures.Items[imageidx]);

	// get file size and date attributes
	fh:=FileOpen(cbPictures.Items[imageidx], fmOpenWrite);
	fs:=GetFileSize(fh, Nil);
	fileSize.Caption:=ConvertToUsefulUnit(fs);
	FileClose(fh);

	fileDate.Caption := DateTimeToStr(FileDateToDateTime(FileAge(cbPictures.Items[imageidx])));
  end
  else begin
	iView.Picture.LoadFromFile(RunFrom+'data\bignoimage.bmp');

	fileSize.Caption:='....';
	fileDate.Caption:='....';
  end;

  if imageidx=0 then
	sbPrevious.Enabled:=False
  else
	sbPrevious.Enabled:=True;

  if imageidx=cbPictures.Items.Count-1 then
	sbNext.Enabled:=False
  else
	sbNext.Enabled:=True;

  Caption:='Image Viewer ['+IntToStr(imageidx+1)+' of '+IntToStr(cbPictures.Items.Count)+']';

  Cursor:=crDefault;     */
}


void __fastcall TfrmPictureViewer::sbPreviousClick(TObject *Sender)
{                 /*
	if (cbPictures->ItemIndex != 0)
	{
		cbPictures->ItemIndex--;
	}

	ShowImage(); */
}


void __fastcall TfrmPictureViewer::sbNextClick(TObject *Sender)
{               /*
	if (cbPictures->ItemIndex != cbPictures->Items->Count - 1)
	{
		cbPictures->ItemIndex++;
	}

	ShowImage();  */
}


void __fastcall TfrmPictureViewer::cbPicturesChange(TObject *Sender)
{
//	ShowImage();
}
