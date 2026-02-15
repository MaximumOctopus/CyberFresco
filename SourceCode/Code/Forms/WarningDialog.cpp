//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "WarningDialog.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm9 *Form9;
//---------------------------------------------------------------------------
__fastcall TForm9::TForm9(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------


/*
procedure DoError(msg1, msg2 : string; msg3 : TStringList);
 begin
  with TfrmError.Create(Application) do
    try
      Caption       :=msg1;
      lMain.Caption :=msg2;
      Memo1.Text:=msg3.Text;

      ShowModal;
    finally
      Free;
    end;
end;

procedure TfrmError.SpeedButton1Click(Sender: TObject);
 begin
  Close;
end;

end.
*/
