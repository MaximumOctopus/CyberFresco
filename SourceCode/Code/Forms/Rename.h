//---------------------------------------------------------------------------

#ifndef RenameH
#define RenameH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TForm3 : public TForm
{
__published:	// IDE-managed Components
	TBevel *Bevel2;
	TBevel *Bevel3;
	TLabel *Label3;
	TLabel *Label4;
	TLabel *lExample;
	TLabel *Label1;
	TEdit *eStem;
	TRadioGroup *rgDigits;
	TBitBtn *bOK;
	TBitBtn *bCancel;
private:
public:
	__fastcall TForm3(TComponent* Owner);

	std::wstring Stem = L"";
    int DigitCount = 2;
};
//---------------------------------------------------------------------------
extern PACKAGE TForm3 *Form3;
//---------------------------------------------------------------------------
#endif
