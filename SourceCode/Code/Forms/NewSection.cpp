//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "NewSection.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmNewSection *frmNewSection;
//---------------------------------------------------------------------------
__fastcall TfrmNewSection::TfrmNewSection(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmNewSection::bbOKClick(TObject *Sender)
{
	if (eName->Text != L"")
	{
		SelectedName = eName->Text;

        ModalResult = mrOk;
	}
}


void __fastcall TfrmNewSection::eNameChange(TObject *Sender)
{
	if (eName->Text != L"")
	{
		bool valid = true;

		std::wstring name = eName->Text.c_str();

		for (int t = 0; t < name.length(); t++)
		{
			if (!isalnum(name[t]))
			{
				valid = false;
			}
		}

		bbOK->Enabled = valid;
	}
	else
	{
		bbOK->Enabled = false;
	}
}
