//---------------------------------------------------------------------------

#ifndef ProjectInformationH
#define ProjectInformationH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.Grids.hpp>
//---------------------------------------------------------------------------
class TfrmProjectInformation : public TForm
{
__published:	// IDE-managed Components
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *lAlbumName;
	TLabel *lAlbumFilename;
	TLabel *Label4;
	TLabel *lAlbumSize;
	TImage *Image1;
	TBevel *Bevel2;
	TBitBtn *bbClose;
	TStringGrid *sgMain;
private:
public:
	__fastcall TfrmProjectInformation(TComponent* Owner);

    void Reset();

	void SetCaptions(const std::wstring, const std::wstring, const std::wstring);

    void AddTableRow(const std::wstring, const std::wstring, const std::wstring, const std::wstring, const std::wstring);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmProjectInformation *frmProjectInformation;
//---------------------------------------------------------------------------
#endif
