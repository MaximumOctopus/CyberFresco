//---------------------------------------------------------------------------

#ifndef ThemeEditorH
#define ThemeEditorH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <SHDocVw.hpp>
#include <System.ImageList.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.ExtDlgs.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.Menus.hpp>
#include <Vcl.OleCtrls.hpp>
#include <Vcl.Samples.Spin.hpp>
#include <Vcl.ToolWin.hpp>

#include "CyberThemeHandler.h"
//---------------------------------------------------------------------------
class TfrmThemeEditor : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TPageControl *pcMain;
	TTabSheet *TabSheet4;
	TLabel *Label18;
	TTabSheet *TabSheet1;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TShape *seTopFontColour;
	TLabel *Label4;
	TLabel *Label5;
	TShape *seTopBkgdColour;
	TLabel *Label20;
	TLabel *lTopBkgdImage;
	TSpeedButton *SpeedButton3;
	TSpeedButton *SpeedButton4;
	TImage *iTopGraphic;
	TLabel *Label24;
	TShape *seTopFontHighlight;
	TSpinEdit *seTopFontSize;
	TTabSheet *TabSheet2;
	TLabel *Label6;
	TLabel *Label7;
	TShape *seMenuBkgdColour;
	TLabel *Label10;
	TLabel *Label11;
	TLabel *Label12;
	TShape *seMenuFontColour;
	TLabel *Label16;
	TShape *seMenuFontHighlight;
	TLabel *Label19;
	TLabel *lMenuBkgdImage;
	TImage *iMenuGraphic;
	TSpeedButton *SpeedButton2;
	TSpeedButton *sbMenuBkgdImage;
	TSpinEdit *seMenuFontSize;
	TTabSheet *TabSheet3;
	TLabel *Label8;
	TLabel *Label9;
	TShape *seMainBkgdColour;
	TLabel *Label13;
	TLabel *Label14;
	TLabel *Label15;
	TShape *seMainFontColour;
	TLabel *Label17;
	TShape *seMainFontHighlight;
	TLabel *Label22;
	TLabel *lMainBkgdImage;
	TSpeedButton *SpeedButton5;
	TSpeedButton *SpeedButton6;
	TImage *iMainGraphic;
	TSpinEdit *seMainFontSize;
	TPanel *Panel2;
	TToolBar *ToolBar1;
	TToolButton *tbSave;
	TToolButton *ToolButton3;
	TToolButton *tbLoad;
	TToolButton *ToolButton4;
	TToolButton *tbPreview;
	TToolButton *ToolButton2;
	TToolButton *tbMode;
	TWebBrowser *wbPreview;
	TStatusBar *sbMain;
	TMainMenu *MainMenu1;
	TMenuItem *File1;
	TMenuItem *New1;
	TMenuItem *N1;
	TMenuItem *Load1;
	TMenuItem *miSave;
	TMenuItem *SaveAs1;
	TMenuItem *N2;
	TMenuItem *Exit1;
	TMenuItem *Help1;
	TMenuItem *Help2;
	TColorDialog *cdMain;
	TOpenPictureDialog *opdMain;
	TImageList *ImageList1;
	void __fastcall SaveAs1Click(TObject *Sender);
	void __fastcall New1Click(TObject *Sender);
	void __fastcall Load1Click(TObject *Sender);
	void __fastcall miSaveClick(TObject *Sender);
	void __fastcall SpeedButton3Click(TObject *Sender);
	void __fastcall SpeedButton4Click(TObject *Sender);
	void __fastcall SpeedButton5Click(TObject *Sender);
	void __fastcall SpeedButton6Click(TObject *Sender);
	void __fastcall tbPreviewClick(TObject *Sender);
	void __fastcall tbModeClick(TObject *Sender);
	void __fastcall SpeedButton2Click(TObject *Sender);
	void __fastcall seTopFontColourMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall Help2Click(TObject *Sender);
	void __fastcall sbMenuBkgdImageClick(TObject *Sender);
	void __fastcall FormConstrainedResize(TObject *Sender, int &MinWidth, int &MinHeight,
          int &MaxWidth, int &MaxHeight);
	void __fastcall FormCreate(TObject *Sender);
private:

    std::wstring RunFrom = L"";

	void LoadTheme(int);
	void GeneratePreview();
	void BuildUIFromTheme();
	void GenerateThemeFromMenuData();

public:
	__fastcall TfrmThemeEditor(TComponent* Owner);

	CyberThemeHandler *CFThemeHandler;

    int SelectedTheme = 0;
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmThemeEditor *frmThemeEditor;
//---------------------------------------------------------------------------
#endif
