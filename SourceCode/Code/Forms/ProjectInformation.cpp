//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ProjectInformation.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmProjectInformation *frmProjectInformation;
//---------------------------------------------------------------------------
__fastcall TfrmProjectInformation::TfrmProjectInformation(TComponent* Owner)
	: TForm(Owner)
{
	sgMain->Cells[0][0] = L"Name";
	sgMain->Cells[1][0] = L"Images";
	sgMain->Cells[2][0] = L"Size";
	sgMain->Cells[3][0] = L"Created";
	sgMain->Cells[4][0] = L"Uploaded";
}
//---------------------------------------------------------------------------

void TfrmProjectInformation::Reset()
{
	sgMain->RowCount = 2;
}


void TfrmProjectInformation::SetCaptions(const std::wstring a, const std::wstring b, const std::wstring c)
{
	lAlbumName->Caption     = a.c_str();
	lAlbumFilename->Caption = b.c_str();
	lAlbumSize->Caption     = c.c_str();

    lAlbumFilename->Hint    = b.c_str();
}


void TfrmProjectInformation::AddTableRow(const std::wstring n, const std::wstring i, const std::wstring s, const std::wstring c, const std::wstring u)
{
	int row = sgMain->RowCount - 1;

	sgMain->Cells[0][row] = n.c_str();
	sgMain->Cells[1][row] = i.c_str();
	sgMain->Cells[2][row] = s.c_str();
	sgMain->Cells[3][row] = c.c_str();
	sgMain->Cells[4][row] = u.c_str();

    sgMain->RowCount++;
}

