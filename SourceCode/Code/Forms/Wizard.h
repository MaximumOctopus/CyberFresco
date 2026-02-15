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
class TfrmWizard : public TForm
{
__published:	// IDE-managed Components
	TShape *Shape1;
	TBevel *Bevel2;
	TLabel *Label1;
	TLabel *lPage;
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
	void __fastcall SpeedButton1Click(TObject *Sender);
	void __fastcall sbSelectIndividualClick(TObject *Sender);
	void __fastcall sbClearImagesClick(TObject *Sender);
	void __fastcall eAlbumNameChange(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
private:

	int CurrentPage = 1;

	void SetPage();

	void AddFromFolder(const std::wstring);

public:		// User declarations
	__fastcall TfrmWizard(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmWizard *frmWizard;
//---------------------------------------------------------------------------
#endif
