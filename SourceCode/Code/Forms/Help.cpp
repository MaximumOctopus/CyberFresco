//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Help.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmHelp *frmHelp;
//---------------------------------------------------------------------------
__fastcall TfrmHelp::TfrmHelp(TComponent* Owner)
	: TForm(Owner)
{
}


void TfrmHelp::ShowPage(const std::wstring file_name)
{
//
}
