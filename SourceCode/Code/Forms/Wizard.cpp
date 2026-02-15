//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Wizard.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmWizard *frmWizard;
//---------------------------------------------------------------------------
__fastcall TfrmWizard::TfrmWizard(TComponent* Owner)
	: TForm(Owner)
{
}


void __fastcall TfrmWizard::FormShow(TObject *Sender)
{
	CurrentPage = 1;

	p0->BringToFront();
}


void __fastcall TfrmWizard::SpeedButton1Click(TObject *Sender)
{
	//s:=DoChooseDir(False);

   //	if s<>'' then begin
   //		AddFilesFrom(s);
	//}
}


void __fastcall TfrmWizard::sbSelectIndividualClick(TObject *Sender)
{
	if (opdWizard->Execute())
	{
		for (int t = 0; t < opdWizard->Files->Count - 1; t++)
		{
			lbImages->Items->Add(opdWizard->Files->Strings[t]);
		}
	}
}


void __fastcall TfrmWizard::sbClearImagesClick(TObject *Sender)
{
	lbImages->Clear();
}


void __fastcall TfrmWizard::eAlbumNameChange(TObject *Sender)
{
	TEdit *edit = (TEdit*)Sender;

	if (edit->Text != L"")
	{
		bNext->Enabled = true;
	}
	else
	{
		bNext->Enabled = false;
	}
}


void __fastcall TfrmWizard::bBackClick(TObject *Sender)
{
	CurrentPage--;

	SetPage();
}


void __fastcall TfrmWizard::bNextClick(TObject *Sender)
{
	CurrentPage++;

	SetPage();
}


void TfrmWizard::SetPage()
{
	switch (CurrentPage)
	{
	case 1:
		p0->BringToFront();
		break;
	case 2:
		p1->BringToFront();
		break;
	case 3:
		p2->BringToFront();
		eSectionName->SetFocus();
		break;
	case 4:
		p3->BringToFront();
		break;
	case 5:
		p4->BringToFront();
		break;
	}

	if (CurrentPage > 1)
	{
		bBack->Enabled = true;
	}
	else
	{
		bBack->Enabled = false;
	}

	if (CurrentPage < 6)
	{
		bNext->Enabled = true;
	}
	else
	{
		bNext->Enabled = false;
	}

	std::wstring page = L"Page " + std::to_wstring(CurrentPage) + L" of 6";

	lPage->Caption = page.c_str();
}


void TfrmWizard::AddFromFolder(const std::wstring folder)
{
	/*if FindFirst(s+'\*.jpg', $3F, searchrec)=0 then begin
	  repeat
		lbImages.Items.Add(searchrec.Name);
	  until FindNext(searchrec) <> 0;
	  FindClose(searchrec);
	end;*/
}
