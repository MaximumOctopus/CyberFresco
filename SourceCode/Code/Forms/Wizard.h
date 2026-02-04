//---------------------------------------------------------------------------

#ifndef WizardH
#define WizardH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <SHDocVw.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.ExtDlgs.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.OleCtrls.hpp>
//---------------------------------------------------------------------------
class TForm2 : public TForm
{
__published:	// IDE-managed Components
	TBevel *Bevel1;
	TShape *Shape1;
	TBevel *Bevel2;
	TLabel *Label1;
	TLabel *lPage;
	TImage *Image1;
	TPanel *p1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TRadioGroup *RadioGroup1;
	TPanel *p0;
	TLabel *Label5;
	TLabel *Label6;
	TEdit *eAlbumName;
	TPanel *p2;
	TLabel *Label8;
	TEdit *eSectionName;
	TPanel *p3;
	TLabel *Label7;
	TSpeedButton *SpeedButton1;
	TSpeedButton *sbSelectIndividual;
	TSpeedButton *sbClearImages;
	TListBox *lbImages;
	TBitBtn *bNext;
	TBitBtn *bBack;
	TBitBtn *BitBtn3;
	TPanel *p4;
	TLabel *Label9;
	TComboBox *ComboBox1;
	TWebBrowser *WebBrowser1;
	TOpenPictureDialog *opdWizard;
	void __fastcall bBackClick(TObject *Sender);
	void __fastcall bNextClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm2(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm2 *Form2;
//---------------------------------------------------------------------------
#endif
