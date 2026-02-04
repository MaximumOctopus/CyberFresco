//---------------------------------------------------------------------------

#ifndef mainH
#define mainH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <IdBaseComponent.hpp>
#include <IdComponent.hpp>
#include <IdExplicitTLSClientServerBase.hpp>
#include <IdFTP.hpp>
#include <IdTCPClient.hpp>
#include <IdTCPConnection.hpp>
#include <SHDocVw.hpp>
#include <System.Actions.hpp>
#include <System.ImageList.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.ExtDlgs.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.Mask.hpp>
#include <Vcl.Menus.hpp>
#include <Vcl.OleCtrls.hpp>
#include <Vcl.Samples.Spin.hpp>
#include <Vcl.ToolWin.hpp>
#include <Vcl.XPMan.hpp>

#include "Album.h"
#include "CyberThemeHandler.h"
#include "ImageHandler.h"
#include "PageGenerator.h"

//---------------------------------------------------------------------------
class TfrmMain : public TForm
{
__published:	// IDE-managed Components
	TSplitter *Splitter1;
	TTreeView *tvAlbum;
	TStatusBar *sbMain;
	TPageControl *pcMain;
	TTabSheet *tsPictureList;
	TPanel *Panel1;
	TShape *Shape2;
	TShape *Shape1;
	TImage *iPreview;
	TSpeedButton *sbPLAddPictures;
	TSpeedButton *sbPLRemovePictures;
	TLabel *lPictureCount;
	TSpeedButton *sbPLDeleteAll;
	TImage *iSetForIndex;
	TLabel *Label20;
	TSpeedButton *sbIndexImage;
	TSpeedButton *spPLAddDir;
	TGroupBox *GroupBox2;
	TLabel *Label22;
	TLabel *Label23;
	TLabel *lInfoNum;
	TLabel *lInfoSize;
	TListBox *lbPictureList;
	TTabSheet *tsTheme;
	TLabel *Label6;
	TSpeedButton *SpeedButton3;
	TComboBox *cbThemeList;
	TPanel *Panel2;
	TWebBrowser *wbTheme;
	TTabSheet *tsSection;
	TLabel *Label5;
	TPageControl *PageControl2;
	TTabSheet *TabSheet1;
	TSpeedButton *sbGetIndexPicture;
	TLabel *Label13;
	TLabel *Label15;
	TLabel *Label16;
	TEdit *eSIndexImage;
	TMemo *eSDescription;
	TEdit *eSCaption;
	TGroupBox *GroupBox4;
	TShape *sPageHeader;
	TShape *sPageFooter;
	TCheckBox *cbSDPageHeader;
	TEdit *eSDPageHeaderText;
	TCheckBox *cbSDPageFooter;
	TEdit *eSDPageFooterText;
	TTabSheet *TabSheet2;
	TGroupBox *GroupBox1;
	TLabel *Label11;
	TLabel *Label12;
	TLabel *lSPageCount;
	TLabel *Label24;
	TLabel *lSThumbnailWidth;
	TGroupBox *GroupBox3;
	TLabel *Label8;
	TLabel *Label10;
	TLabel *Label9;
	TBevel *Bevel1;
	TSpinEdit *seMaxPerPage;
	TSpinEdit *seMaxAcross;
	TSpinEdit *seMaxDimension;
	TCheckBox *cbSThumbnailsOnly;
	TTabSheet *TabSheet3;
	TLabel *Label25;
	TLabel *Label26;
	TLabel *Label27;
	TCheckBox *cbSPResize;
	TEdit *eSPWidth;
	TEdit *eSPHeight;
	TTabSheet *tsAlbum;
	TPageControl *PageControl1;
	TTabSheet *TabSheet6;
	TLabel *Label17;
	TSpeedButton *sbEditTheme;
	TLabel *Label18;
	TLabel *Label19;
	TLabel *Label29;
	TLabel *Label33;
	TComboBox *cbAIPTheme;
	TSpinEdit *seAIPThumbnailWidth;
	TEdit *cbAIPTitle;
	TPanel *Panel3;
	TWebBrowser *wbIndexTheme;
	TEdit *eAIPFilename;
	TEdit *eASHomeLink;
	TTabSheet *TabSheet5;
	TLabel *Label4;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label7;
	TLabel *Label21;
	TSpeedButton *sbASTestSettings;
	TLabel *Label28;
	TEdit *eFTPHost;
	TEdit *eAlbumRoot;
	TEdit *eWebsiteURL;
	TMaskEdit *ePassword;
	TEdit *eAbsolutePath;
	TBitBtn *bAutoConfigure;
	TEdit *eUsername;
	TCoolBar *CoolBar1;
	TToolBar *ToolBar1;
	TToolButton *tbSave;
	TToolButton *ToolButton1;
	TToolButton *tbAdd;
	TToolButton *tbDelete;
	TToolButton *ToolButton2;
	TToolButton *tbUploadSection;
	TToolButton *tbUploadAlbum;
	TToolButton *ToolButton5;
	TToolButton *tbPreviewIndex;
	TToolButton *tbPreviewSection;
	TToolButton *tbPreviewAlbum;
	TToolButton *ToolButton4;
	TToolButton *tbInfo;
	TMainMenu *MainMenu;
	TMenuItem *File1;
	TMenuItem *miOpen;
	TMenuItem *miNewAlbum;
	TMenuItem *miNewAlbumWizard;
	TMenuItem *N5;
	TMenuItem *miClose;
	TMenuItem *N3;
	TMenuItem *miSaveAs;
	TMenuItem *miSave;
	TMenuItem *N1;
	TMenuItem *miExit;
	TMenuItem *Edit1;
	TMenuItem *miSettings;
	TMenuItem *View1;
	TMenuItem *miCheckList;
	TMenuItem *miPictureBrowser;
	TMenuItem *Generate1;
	TMenuItem *miGUpload;
	TMenuItem *miUploadSectionIndexPages;
	TMenuItem *miUploadAlbumIndex;
	TMenuItem *N4;
	TMenuItem *miGBuildLocal;
	TMenuItem *miBuildLocalAutomatic;
	TMenuItem *miBuildLocalWizard;
	TMenuItem *ools1;
	TMenuItem *miRename;
	TMenuItem *N6;
	TMenuItem *miThemeEditor;
	TMenuItem *Help1;
	TMenuItem *miHelp;
	TMenuItem *miContextHelp;
	TMenuItem *N2;
	TMenuItem *miWebsite;
	TMenuItem *miCheckForNewVersion;
	TMenuItem *N9;
	TMenuItem *miAbout;
	TOpenDialog *odMain;
	TSaveDialog *sdMain;
	TImageList *ImageList1;
	TIdFTP *ftpMain;
	TPopupMenu *pmPictureList;
	TMenuItem *SetasIndeximage1;
	TMenuItem *DeletePicture1;
	TMenuItem *N8;
	TMenuItem *ImageViewer1;
	TImageList *il2;
	TImageList *ilBig;
	TImageList *ImageList2;
	TOpenPictureDialog *opdMain;
	TImageList *ilMenu;
	TColorDialog *cdMain;
	TMenuItem *N10;
	TMenuItem *N11;
	TMenuItem *miRelocateFolder;
	TTabSheet *TabSheet4;
	TListBox *lbLog;
	TMenuItem *N12;
	TMenuItem *miNewAlbumFromFolders;
	TMenuItem *N7;
	TPanel *Panel4;
	TImage *Image1;
	void __fastcall miNewAlbumClick(TObject *Sender);
	void __fastcall miNewAlbumWizardClick(TObject *Sender);
	void __fastcall miOpenClick(TObject *Sender);
	void __fastcall miCloseClick(TObject *Sender);
	void __fastcall miSaveAsClick(TObject *Sender);
	void __fastcall miSaveClick(TObject *Sender);
	void __fastcall miExitClick(TObject *Sender);
	void __fastcall miSettingsClick(TObject *Sender);
	void __fastcall miCheckListClick(TObject *Sender);
	void __fastcall miPictureBrowserClick(TObject *Sender);
	void __fastcall miUploadSectionIndexPagesClick(TObject *Sender);
	void __fastcall miUploadAlbumIndexClick(TObject *Sender);
	void __fastcall miBuildLocalAutomaticClick(TObject *Sender);
	void __fastcall miBuildLocalWizardClick(TObject *Sender);
	void __fastcall miRenameClick(TObject *Sender);
	void __fastcall miHelpClick(TObject *Sender);
	void __fastcall miContextHelpClick(TObject *Sender);
	void __fastcall miWebsiteClick(TObject *Sender);
	void __fastcall miCheckForNewVersionClick(TObject *Sender);
	void __fastcall miAboutClick(TObject *Sender);
	void __fastcall iPreviewClick(TObject *Sender);
	void __fastcall sbPLAddPicturesClick(TObject *Sender);
	void __fastcall spPLAddDirClick(TObject *Sender);
	void __fastcall sbPLRemovePicturesClick(TObject *Sender);
	void __fastcall sbPLDeleteAllClick(TObject *Sender);
	void __fastcall sbIndexImageClick(TObject *Sender);
	void __fastcall SpeedButton3Click(TObject *Sender);
	void __fastcall tbSaveClick(TObject *Sender);
	void __fastcall tbAddClick(TObject *Sender);
	void __fastcall tbDeleteClick(TObject *Sender);
	void __fastcall tbUploadSectionClick(TObject *Sender);
	void __fastcall tbUploadAlbumClick(TObject *Sender);
	void __fastcall tbPreviewIndexClick(TObject *Sender);
	void __fastcall tbPreviewSectionClick(TObject *Sender);
	void __fastcall tbPreviewAlbumClick(TObject *Sender);
	void __fastcall tbInfoClick(TObject *Sender);
	void __fastcall lbPictureListClick(TObject *Sender);
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall tvAlbumClick(TObject *Sender);
	void __fastcall ftpMainWork(TObject *ASender, TWorkMode AWorkMode, __int64 AWorkCount);
	void __fastcall ftpMainWorkBegin(TObject *ASender, TWorkMode AWorkMode, __int64 AWorkCountMax);
	void __fastcall FormConstrainedResize(TObject *Sender, int &MinWidth, int &MinHeight,
          int &MaxWidth, int &MaxHeight);
	void __fastcall bAutoConfigureClick(TObject *Sender);
	void __fastcall cbThemeListChange(TObject *Sender);
	void __fastcall miRelocateFolderClick(TObject *Sender);
	void __fastcall sPageHeaderMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall cbAIPThemeChange(TObject *Sender);
	void __fastcall sbMainResize(TObject *Sender);
	void __fastcall pmPictureListPopup(TObject *Sender);
	void __fastcall cbSThumbnailsOnlyClick(TObject *Sender);
	void __fastcall seMaxAcrossChange(TObject *Sender);
	void __fastcall sbGetIndexPictureClick(TObject *Sender);
	void __fastcall eWebsiteURLExit(TObject *Sender);
	void __fastcall seMaxDimensionChange(TObject *Sender);
	void __fastcall lbPictureListKeyDown(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall lbPictureListDrawItem(TWinControl *Control, int Index, TRect &Rect,
          TOwnerDrawState State);
	void __fastcall sbASTestSettingsClick(TObject *Sender);
	void __fastcall eWebsiteURLChange(TObject *Sender);
	void __fastcall seMaxPerPageChange(TObject *Sender);
	void __fastcall miNewAlbumFromFoldersClick(TObject *Sender);
	void __fastcall sbEditThemeClick(TObject *Sender);


private:

    ImageHandler *CFImageHandler;
	PageGenerator *CFPageGenerator;

	std::wstring RunFrom = L"";
	std::wstring LastImagesFolder = L"";

	TTreeNode* Selected = NULL;

	int SelectedSection = 0;
    bool ImagesChanged = false;

    void LoadNoImage();

	void BuildSectionPreview();

	void BuildTreeDisplay();
    void PreserveCurrentData();

	void AddToPictureList(const std::wstring);

	void RebuildViews(int);
    void UpdateAlbumChangesPendingStatus();

	void ToggleDisplay(bool);
	void UpdateStuff();
	void InitialisePreview(const std::wstring, const std::wstring, const std::wstring, int);
	void DeInitialisePreview();
	void ClearAll();
    void UpdateForNewAlbum();
    void ToggleTabs(int);

	void GenerateAlbumIndex(const std::wstring, bool);

	void RebuildThemePreview();
	void RebuildIndexThemePreview();
	void ThemesFolderChange();

	void GenerateLocalFiles(const std::wstring, bool, bool, bool);

	void AddToLog(const std::wstring);

	int GenerateUploadCount(const std::wstring);
	bool CheckFTPDetails();
    void UploadAlbumIndex();
	void UploadSection(int, const std::wstring, bool, bool, bool);
    void UploadFiles();

public:
	__fastcall TfrmMain(TComponent* Owner);

	Album *CFAlbum;

	CyberThemeHandler *CFThemeHandler;
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmMain *frmMain;
//---------------------------------------------------------------------------
#endif
