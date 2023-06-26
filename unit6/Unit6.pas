unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Mask, DBCtrls, Buttons,
  Grids, DBGrids, frxClass, frxDBSet;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ZQuery1id: TIntegerField;
    ZQuery1siswa_id: TIntegerField;
    ZQuery1ortu_id: TIntegerField;
    ZQuery1status_hub_anak: TStringField;
    ZQuery1keterangan: TStringField;
    ZQuery1status_ortu: TStringField;
    ZQuery1id_siswa: TIntegerField;
    ZQuery1id_ortu: TIntegerField;
    ZQuery2: TZQuery;
    ZQuery3: TZQuery;
    DataSource1: TDataSource;
    BitBtn6: TBitBtn;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure bersih;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.DBGrid1CellClick(Column: TColumn);
begin
DBLookupComboBox1.KeyValue:= ZQuery1.FieldList[1].AsInteger;
DBLookupComboBox2.KeyValue:= ZQuery1.FieldList[2].AsInteger;
DBEdit1.Text:=ZQuery1.FieldList[3].AsString;
DBEdit2.Text:=ZQuery1.FieldList[4].AsString;
DBEdit3.Text:=ZQuery1.FieldList[5].AsString;

DBLookupComboBox1.Enabled:= True;
DBLookupComboBox2.Enabled:= True;
DBEdit1.Enabled:=True;
DBEdit2.Enabled:=True;
DBEdit3.Enabled:=True;

BitBtn1.Enabled:= False;
BitBtn2.Enabled:= False;
BitBtn3.Enabled:= True;
BitBtn4.Enabled:= True;
BitBtn5.Enabled:= True;
end;

procedure TForm6.bersih;
begin
DBLookupComboBox1.KeyValue:=null;
DBLookupComboBox2.KeyValue:=null;
DBEdit1.Text:='';
DBEdit2.Text:='';
DBEdit3.Text:='';
end;

procedure TForm6.posisiawal;
begin
bersih;
BitBtn1.Enabled:= True;
BitBtn2.Enabled:= False;
BitBtn3.Enabled:= False;
BitBtn4.Enabled:= False;
BitBtn5.Enabled:= False;
DBLookupComboBox1.Enabled:= False;
DBLookupComboBox2.Enabled:= False;
DBEdit1.Enabled:= False;
DBEdit2.Enabled:= False;
DBEdit3.Enabled:= False;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.BitBtn1Click(Sender: TObject);
begin
BitBtn1.Enabled:= false;
BitBtn2.Enabled:= True;
BitBtn3.Enabled:= False;
BitBtn4.Enabled:= False;
BitBtn5.Enabled:= True;
ZQuery1.Append;
DBLookupComboBox1.Enabled:= True;
DBLookupComboBox2.Enabled:= True;
DBEdit1.Enabled:=True;
DBEdit2.Enabled:=True;
DBEdit3.Enabled:=True;
end;

procedure TForm6.BitBtn2Click(Sender: TObject);
begin
ZQuery1.Post;
ShowMessage('data berhasil disimpan');
ZQuery1.Close;
ZQuery1.Open;
posisiawal;
end;

procedure TForm6.BitBtn3Click(Sender: TObject);
begin
ZQuery1.Post;
ShowMessage('data berhasil diupdate');
ZQuery1.Close;
ZQuery1.Open;
posisiawal;
end;

procedure TForm6.BitBtn4Click(Sender: TObject);
begin
ZQuery1.Delete;
ShowMessage('data berhasil dihapus');
ZQuery1.Close;
ZQuery1.Open;
posisiawal;
end;

procedure TForm6.BitBtn5Click(Sender: TObject);
begin
posisiawal;
bersih;
end;

procedure TForm6.BitBtn6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
 