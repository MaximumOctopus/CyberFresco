//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "CFSettings.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmSettings *frmSettings;
//---------------------------------------------------------------------------
__fastcall TfrmSettings::TfrmSettings(TComponent* Owner)
	: TForm(Owner)
{
}


void __fastcall TfrmSettings::FormShow(TObject *Sender)
{
	BuildSettingsDisplay();

	pWelcome->BringToFront();
}


void __fastcall TfrmSettings::tvMenuClick(TObject *Sender)
{
	TTreeNode *bob = tvMenu->Selected;
	int i = bob->AbsoluteIndex;

	switch (i)
	{
	case 0:
		pGeneral->BringToFront();
		break;
	case 1:
		pUpload->BringToFront();
		break;
	case 2:
		pProxy->BringToFront();
		break;
	}
}


void __fastcall TfrmSettings::cbUseDefaultFTPClick(TObject *Sender)
{
	TColor col = clBtnFace;
	bool status = false;

	if (cbUseDefaultFTP->Checked)
	{
		col    = clWhite;
		status = true;
	}

	eWebsiteURL->Color   = col;
	eWebsiteURL->Enabled = status;
	eFTPHost->Color      = col;
	eFTPHost->Enabled    = status;
	eUsername->Color     = col;
	eUsername->Enabled   = status;
	ePassword->Color     = col;
	ePassword->Enabled   = status;
	eASHomeLink->Color   = col;
	eASHomeLink->Enabled = status;
}


void __fastcall TfrmSettings::bHelpClick(TObject *Sender)
{
	//OpenHelpWindow('preferences.htm');
}


void TfrmSettings::BuildSettingsDisplay()
{
	cbShowTips->Checked = ShowTips;

	cbUseDefaultFTP->Checked = UseDefaultFTP;
	eWebsiteURL->Text        = WebsiteURL.c_str();
	eFTPHost->Text           = FTPHost.c_str();
	eUsername->Text          = Username.c_str();
	ePassword->Text          = Password.c_str();
	eASHomeLink->Text        = HomeURL.c_str();

	// connection --------------------------------------------------------------
	cbCPassiveMode->Checked  = FTPPassive;
	eCFTPPort->Text          = FTPPort;

	cbUseDefaultFTPClick(NULL);
}

