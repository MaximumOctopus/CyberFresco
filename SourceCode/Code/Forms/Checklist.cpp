//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Checklist.h"
#include "Constants.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmCheckList *frmCheckList;
//---------------------------------------------------------------------------
__fastcall TfrmCheckList::TfrmCheckList(TComponent* Owner)
	: TForm(Owner)
{

}


void __fastcall TfrmCheckList::FormShow(TObject *Sender)
{
	lSettings->Caption = CheckListText[0].c_str();

	ilCheckList->GetBitmap(CheckList[0], Image1->Picture->Bitmap);
	ilCheckList->GetBitmap(CheckList[1], Image2->Picture->Bitmap);
	ilCheckList->GetBitmap(CheckList[2], Image3->Picture->Bitmap);
	ilCheckList->GetBitmap(CheckList[3], Image4->Picture->Bitmap);
	ilCheckList->GetBitmap(CheckList[4], Image5->Picture->Bitmap);
	ilCheckList->GetBitmap(CheckList[5], Image6->Picture->Bitmap);
	ilCheckList->GetBitmap(CheckList[6], Image7->Picture->Bitmap);
}


void __fastcall TfrmCheckList::FormMouseMove(TObject *Sender, TShiftState Shift, int X,
		  int Y)
{
	lSettings->Caption = CheckListText[0].c_str();
}


void __fastcall TfrmCheckList::Image1MouseMove(TObject *Sender, TShiftState Shift,
		  int X, int Y)
{
	TImage *image = (TImage*)Sender;

	lSettings->Caption = CheckListText[image->Tag].c_str();
}


void __fastcall TfrmCheckList::Label1MouseMove(TObject *Sender, TShiftState Shift,
		  int X, int Y)
{
	TLabel *label = (TLabel*)Sender;

	lSettings->Caption = CheckListText[label->Tag].c_str();
}
