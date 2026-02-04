//---------------------------------------------------------------------------

#ifndef SaveThemeH
#define SaveThemeH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TLabel *Label1;
	TEdit *eSimpleName;
	TEdit *eDescription;
	TLabel *Label2;
	TLabel *Label3;
	TEdit *eAuthor;
	TSpeedButton *sbSave;
	TSpeedButton *sbCancel;
	TBevel *Bevel2;
private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
