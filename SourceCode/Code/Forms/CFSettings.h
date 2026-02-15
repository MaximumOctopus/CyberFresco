//---------------------------------------------------------------------------

#ifndef CFSettingsH
#define CFSettingsH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Mask.hpp>
//---------------------------------------------------------------------------
class TfrmSettings : public TForm
{
__published:	// IDE-managed Components
	TBevel *Bevel2;
	TPanel *pGeneral;
	TCheckBox *cbShowTips;
	TPanel *pUpload;
	TLabel *Label21;
	TLabel *Label1;
	TLabel *Label3;
	TLabel *Label7;
	TLabel *Label14;
	TCheckBox *cbUseDefaultFTP;
	TEdit *eWebsiteURL;
	TEdit *eFTPHost;
	TMaskEdit *eUsername;
	TMaskEdit *ePassword;
	TEdit *eASHomeLink;
	TPanel *pProxy;
	TLabel *Label5;
	TCheckBox *cbCPassiveMode;
	TEdit *eCFTPPort;
	TPanel *pWelcome;
	TLabel *Label2;
	TBitBtn *bbSave;
	TBitBtn *bbCancel;
	TTreeView *tvMenu;
	TBitBtn *bHelp;
	void __fastcall tvMenuClick(TObject *Sender);
	void __fastcall cbUseDefaultFTPClick(TObject *Sender);
	void __fastcall bHelpClick(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
private:

	void BuildSettingsDisplay();

public:
	__fastcall TfrmSettings(TComponent* Owner);

    bool ShowTips = false;

	bool UseDefaultFTP = false;
	std::wstring WebsiteURL = L"";
	std::wstring FTPHost = L"";
	std::wstring Username = L"";
	std::wstring Password = L"";
	std::wstring HomeURL = L"";

	bool FTPPassive = false;
	int FTPPort = 21;
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmSettings *frmSettings;
//---------------------------------------------------------------------------
#endif
