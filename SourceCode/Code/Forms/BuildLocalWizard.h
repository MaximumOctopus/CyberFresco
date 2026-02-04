//---------------------------------------------------------------------------

#ifndef BuildLocalWizardH
#define BuildLocalWizardH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.CheckLst.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Graphics.hpp>
//---------------------------------------------------------------------------
class TfrmBuildLocalWizard : public TForm
{
__published:	// IDE-managed Components
	TBevel *Bevel5;
	TImage *Image1;
	TBevel *Bevel2;
	TPanel *pThird;
	TLabel *Label2;
	TSpeedButton *SpeedButton2;
	TCheckListBox *clbSection;
	TPanel *pFifth;
	TBitBtn *bBuild;
	TMemo *Memo2;
	TPanel *pFourth;
	TLabel *Label1;
	TSpeedButton *SpeedButton1;
	TEdit *eLocation;
	TMemo *Memo3;
	TPanel *pFirst;
	TMemo *Memo1;
	TPanel *pSecond;
	TLabel *Label3;
	TCheckBox *cbBuildIndex;
	TCheckBox *cbGenerateImages;
	TCheckBox *cbCopyImages;
	TBitBtn *bBack;
	TBitBtn *bCancel;
	TBitBtn *bNext;
	void __fastcall bNextClick(TObject *Sender);
	void __fastcall SpeedButton1Click(TObject *Sender);
	void __fastcall eLocationChange(TObject *Sender);
	void __fastcall eLocationExit(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall bBuildClick(TObject *Sender);
	void __fastcall bBackClick(TObject *Sender);
private:

    int CurrentPage = 0;
	const int LastPage = 4;

public:
	__fastcall TfrmBuildLocalWizard(TComponent* Owner);

	std::vector<std::wstring> SectionNames;
	std::vector<bool> SectionBuild;

	bool Options[3] = { true, true, true };

    std::wstring Location = L"";
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmBuildLocalWizard *frmBuildLocalWizard;
//---------------------------------------------------------------------------
#endif
