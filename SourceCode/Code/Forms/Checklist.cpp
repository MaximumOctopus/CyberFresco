//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Checklist.h"
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
//
}



/*
const
  cldata : array[0..7] of string = ('move your mouse over each checklist item for more information. A red circle indicates that this item hasn''t been completed',
                                    'for each section you need to choose an image that can will be used on the index page to represent the section',
                                    'the theme for the index page decides how the page will appear to the viewer',
                                    'the title for the index page appears at the very top of the page',
                                    'the section title appears at the top of each page of images',
                                    'the section description appears next to the index image on the index page',
                                    'each section within the album can have a seperate appearance, decided by its theme',
                                    'the upload settings allow CyberFresco to transfer your album to your website');

procedure OpenCheckListWindow(options : TCheckList);
 begin
  with TForm2.Create(Application) do begin
    ilCheckList.GetBitmap(options.CL[1], Image1.Picture.Bitmap);
    ilCheckList.GetBitmap(options.CL[2], Image2.Picture.Bitmap);
    ilCheckList.GetBitmap(options.CL[3], Image3.Picture.Bitmap);
    ilCheckList.GetBitmap(options.CL[4], Image4.Picture.Bitmap);
    ilCheckList.GetBitmap(options.CL[5], Image5.Picture.Bitmap);
    ilCheckList.GetBitmap(options.CL[6], Image6.Picture.Bitmap);
    ilCheckList.GetBitmap(options.CL[7], Image7.Picture.Bitmap);

    Show;
  end;
end;

procedure TForm2.FormShow(Sender: TObject);
 begin
  lSettings.Caption:=cldata[0];
end;

procedure TForm2.FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 begin
  lSettings.Caption:=cldata[0];
end;

procedure TForm2.Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 begin
  lSettings.Caption:=cldata[(Sender As TImage).Tag];
end;

procedure TForm2.Label1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 begin
  lSettings.Caption:=cldata[(Sender As TLabel).Tag];
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
 begin
  Close;
end;
*/
