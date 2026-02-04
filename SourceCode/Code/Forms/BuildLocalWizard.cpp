//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "FileCtrl.hpp"

#include "BuildLocalWizard.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmBuildLocalWizard *frmBuildLocalWizard;
//---------------------------------------------------------------------------
__fastcall TfrmBuildLocalWizard::TfrmBuildLocalWizard(TComponent* Owner)
	: TForm(Owner)
{
}


void __fastcall TfrmBuildLocalWizard::FormShow(TObject *Sender)
{
	pFirst->BringToFront();

    CurrentPage = 0;

	clbSection->Items->Clear();

	for (int t = 0; t < SectionNames.size(); t++)
	{
		clbSection->Items->Add(SectionNames[t].c_str());
	}

	for (int t = 0; t < SectionBuild.size(); t++)
	{
		clbSection->Checked[t] = true;
	}

	cbBuildIndex->Checked = true;
	cbCopyImages->Checked = true;
	cbGenerateImages->Checked = true;
}


void __fastcall TfrmBuildLocalWizard::bBackClick(TObject *Sender)
{
	CurrentPage--;

	switch (CurrentPage)
	{
	case 0:
		pFirst->BringToFront();
		break;
	case 1:
		pSecond->BringToFront();
		break;
	case 2:
		pThird->BringToFront();
		break;
	case 3:
		pFourth->BringToFront();
		break;
	case 4:
		pFifth->BringToFront();
		break;
	}

	if (CurrentPage == 0)
	{
		bBack->Enabled = false;
	}
	else
	{
		bBack->Enabled = true;
	}

	if (CurrentPage == LastPage)
	{
		bNext->Enabled = false;
	}
	else
	{
		bNext->Enabled = true;
	}
}


void __fastcall TfrmBuildLocalWizard::bNextClick(TObject *Sender)
{
	CurrentPage++;

	switch (CurrentPage)
	{
	case 0:
		pFirst->BringToFront();
		break;
	case 1:
		pSecond->BringToFront();
		break;
	case 2:
		pThird->BringToFront();
		break;
	case 3:
		pFourth->BringToFront();
		break;
	case 4:
		pFifth->BringToFront();
		break;
	}

	if (CurrentPage == 0)
	{
		bBack->Enabled = false;
	}
	else
	{
		bBack->Enabled = true;
	}

	if (CurrentPage == LastPage)
	{
		bNext->Enabled = false;
	}
	else
	{
		bNext->Enabled = true;
	}

	// user must select a location before they can continue
//if pidx=4 then
	//pFourth.Enabled:=False;
}


void __fastcall TfrmBuildLocalWizard::SpeedButton1Click(TObject *Sender)
{
	System::UnicodeString initial = L"";

	if (SelectDirectory(initial, TSelectDirOpts() << sdAllowCreate << sdPerformCreate << sdPrompt, 1000))
	{
		eLocation->Text = initial;
	}
}


void __fastcall TfrmBuildLocalWizard::eLocationChange(TObject *Sender)
{
	if (eLocation->Text == L"")
	{
		bNext->Enabled = false;
	}
	else
	{
		bNext->Enabled = true;
	}
}


void __fastcall TfrmBuildLocalWizard::eLocationExit(TObject *Sender)
{
//	if (eLocation->Text[length(eLocation.Text)]<>'\' then
//	eLocation.Text:=eLocation.Text+'\';
}


void __fastcall TfrmBuildLocalWizard::bBuildClick(TObject *Sender)
{
	for (int t = 0; t < SectionBuild.size(); t++)
	{
		SectionBuild[t] = clbSection->Checked[t];
	}

	Options[0] = cbBuildIndex->Checked;
	Options[1] = cbCopyImages->Checked;
	Options[2] = cbGenerateImages->Checked;

	Location = eLocation->Text.c_str();

	ModalResult = mrOk;
}
