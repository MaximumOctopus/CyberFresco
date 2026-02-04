//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "RelocateFolder.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmRelocateFolder *frmRelocateFolder;
//---------------------------------------------------------------------------
__fastcall TfrmRelocateFolder::TfrmRelocateFolder(TComponent* Owner)
	: TForm(Owner)
{
}

void __fastcall TfrmRelocateFolder::bOKClick(TObject *Sender)
{
	OldPattern = eOldPattern->Text.c_str();
	NewPattern = eNewPattern->Text.c_str();

    ModalResult = mrOk;
}
