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
	if (FileExists(cbPictures->Items->Strings[cbPictures->ItemIndex]))
	{
		iView->Picture->LoadFromFile(cbPictures->Items->Strings[cbPictures->ItemIndex]);

		// get file size and date attributes
//		fh:=FileOpen(cbPictures.Items[imageidx], fmOpenWrite);
//		fs:=GetFileSize(fh, Nil);
//		fileSize.Caption:=ConvertToUsefulUnit(fs);
//		FileClose(fh);

		//fileDate.Caption := DateTimeToStr(FileDateToDateTime(FileAge(cbPictures.Items[imageidx])));
	}
	else
	{
//		iView->Picture->LoadFromFile(RunFrom+'data\bignoimage.bmp');

		//fileSize.Caption:='....';
//		fileDate.Caption:='....';
	}

	if (cbPictures->ItemIndex == 0)
	{
		sbPrevious->Enabled = false;
	}
	else
	{
		sbPrevious->Enabled = true;
	}

	if (cbPictures->ItemIndex == cbPictures->Items->Count - 1)
	{
		sbNext->Enabled = false;
	}
	else
	{
		sbNext->Enabled = true;
	}

	std::wstring caption = L"Image Viewer [" + std::to_wstring(cbPictures->ItemIndex + 1) + L" of " + std::to_wstring(cbPictures->Items->Count) + L"]";

	Caption = caption.c_str();
}


void __fastcall TfrmPictureViewer::sbPreviousClick(TObject *Sender)
{
	if (cbPictures->ItemIndex != 0)
	{
		cbPictures->ItemIndex--;
	}

	ShowImage();
}


void __fastcall TfrmPictureViewer::sbNextClick(TObject *Sender)
{
	if (cbPictures->ItemIndex != cbPictures->Items->Count - 1)
	{
		cbPictures->ItemIndex++;
	}

	ShowImage();
}


void __fastcall TfrmPictureViewer::cbPicturesChange(TObject *Sender)
{
	ShowImage();
}
