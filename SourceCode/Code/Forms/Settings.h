//---------------------------------------------------------------------------

#ifndef SettingsH
#define SettingsH
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
class TFrame1 : public TFrame
{
__published:	// IDE-managed Components
	TBevel *Bevel1;
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
	TPanel *pSounds;
	TLabel *Label4;
	TSpeedButton *sbSGetUpload;
	TSpeedButton *sbSTestUpload;
	TCheckBox *cbSPlaySounds;
	TEdit *eSUploadComplete;
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
	TOpenDialog *odSounds;
private:	// User declarations
public:		// User declarations
	__fastcall TFrame1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFrame1 *Frame1;
//---------------------------------------------------------------------------
#endif
