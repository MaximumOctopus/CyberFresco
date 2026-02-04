//---------------------------------------------------------------------------

#ifndef HelpH
#define HelpH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <SHDocVw.hpp>
#include <System.ImageList.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.OleCtrls.hpp>
#include <Vcl.ToolWin.hpp>
//---------------------------------------------------------------------------
class TfrmHelp : public TForm
{
__published:	// IDE-managed Components
	TWebBrowser *wbMain;
	TToolBar *ToolBar1;
	TToolButton *tbClose;
	TToolButton *ToolButton4;
	TToolButton *tbHome;
	TToolButton *ToolButton5;
	TToolButton *tbBack;
	TToolButton *tbForward;
	TToolButton *ToolButton1;
	TComboBox *cbNavigate;
	TImageList *ImageList1;
private:
public:
	__fastcall TfrmHelp(TComponent* Owner);

	void ShowPage(const std::wstring);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmHelp *frmHelp;
//---------------------------------------------------------------------------
#endif
