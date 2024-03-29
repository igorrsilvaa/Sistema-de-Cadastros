unit UClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxTextEdit, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Vcl.ComCtrls, Vcl.Grids, Vcl.Outline, cxMemo,
  Vcl.Buttons, FireDAC.Phys.PGDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask,
  Vcl.DBCtrls, RxToolEdit, RxDBCtrl;

type
  TFrmClientes = class(TForm)
    PnlFundo: TPanel;
    PnlTopo: TPanel;
    PgClientes: TPageControl;
    DadosPessoais: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DsClientes: TDataSource;
    DriverPgAdmin: TFDPhysPgDriverLink;
    Conexao: TFDConnection;
    QClientes: TFDQuery;
    QClientesflg_ativo: TBooleanField;
    QClientesid_cliente: TIntegerField;
    QClientestipo_pessoa: TWideStringField;
    QClientessituacao: TWideStringField;
    QClientesdata_cadastro: TDateField;
    QClientesnome: TWideStringField;
    QClientesapelido: TWideStringField;
    QClientescidade_natural: TWideStringField;
    QClientestip_sangue: TWideStringField;
    QClientesestado_civil: TWideStringField;
    QClientescidade: TWideStringField;
    QClientesbairro: TWideStringField;
    QClientesuf: TWideStringField;
    QClientesendereco: TWideStringField;
    QClientesnumero: TIntegerField;
    QClientescomplemento: TWideStringField;
    QClientesreferencia: TWideStringField;
    QClientesemail: TWideStringField;
    QClientesemail2: TWideStringField;
    QClientesinstagram: TWideStringField;
    QClientesfacebook: TWideStringField;
    QClientestwitter: TWideStringField;
    QClientesobservacao: TWideStringField;
    QClientescpf: TWideStringField;
    QClientesrg: TWideStringField;
    QClientescelular: TWideStringField;
    QClientestelefone: TWideStringField;
    QClientescep: TWideStringField;
    Label30: TLabel;
    QClientesdata_nascimento: TDateField;
    BtnSalvar: TBitBtn;
    BtnAlterar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnDeletar: TBitBtn;
    BtnIncluir: TBitBtn;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    GbContatos: TGroupBox;
    Label13: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    BtnPesquisar: TBitBtn;
    dbedtEdtCpf: TDBEdit;
    dbedtEdtNome: TDBEdit;
    dbedtEdtApelido: TDBEdit;
    dbedtEdtRg: TDBEdit;
    dbedtEdtCidadeNatural: TDBEdit;
    dbedtEdtCep: TDBEdit;
    dbedtEdtCidade: TDBEdit;
    dbedtEdtBairro: TDBEdit;
    dbedtEdtEndereco: TDBEdit;
    dbedtEdtNumero: TDBEdit;
    dbedtEdtComplemento: TDBEdit;
    dbedtEdtReferencia: TDBEdit;
    dbedtEdtTwitter: TDBEdit;
    dbedtEdtIdCliente: TDBEdit;
    dbedtEdtFlgAtivo: TDBEdit;
    dbedtEdtEmail1: TDBEdit;
    dbedtEdtInstagram: TDBEdit;
    dbedtEdtFacebook: TDBEdit;
    dbedtEdtEmail2: TDBEdit;
    EdtSituacao: TDBComboBox;
    EdtTipoPessoa: TDBComboBox;
    DbDataCadastro: TDBDateEdit;
    DataNascimento: TDBDateEdit;
    CbTipSangue: TDBComboBox;
    CbEstadoCivil: TDBComboBox;
    CbUf: TDBComboBox;
    MMObservacao: TDBMemo;
    Label27: TLabel;
    MaskTelefone: TDBEdit;
    MaskCelular: TDBEdit;
    Outline1: TOutline;
    Outline2: TOutline;
    Label28: TLabel;
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnDeletarClick(Sender: TObject);
    procedure BtnIncluirMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BtnIncluirMouseLeave(Sender: TObject);
    procedure BtnSalvarMouseLeave(Sender: TObject);
    procedure BtnSalvarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BtnAlterarMouseLeave(Sender: TObject);
    procedure BtnAlterarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BtnCancelarMouseLeave(Sender: TObject);
    procedure BtnCancelarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BtnDeletarMouseLeave(Sender: TObject);
    procedure BtnDeletarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BtnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmClientes: TFrmClientes;

implementation

uses
  TelaPrincipal, UPesquisaClientes;

{$R *.dfm}

//Botao alterar
procedure TFrmClientes.BtnAlterarClick(Sender: TObject);
begin
  QClientes.Edit;
end;

//Mudar a cor do botao ao passar o cursor
procedure TFrmClientes.BtnAlterarMouseLeave(Sender: TObject);
begin
  BtnAlterar.Font.Color := clBlack;
end;

//Mudar a cor do botao ao passar o cursor
procedure TFrmClientes.BtnAlterarMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  BtnAlterar.Font.Color := clRed;
end;

//funcao do botao cancelar
procedure TFrmClientes.BtnCancelarClick(Sender: TObject);
begin
  if MessageDlg('Cancelar registro?', mtInformation, [mbYes, mbNo],0) = mrYes then
  begin
    QClientes.Cancel;
  end
  else
    Abort;
end;

procedure TFrmClientes.BtnCancelarMouseLeave(Sender: TObject);
begin
  BtnCancelar.Font.Color := clBlack;
end;

procedure TFrmClientes.BtnCancelarMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  BtnCancelar.Font.Color := clred;
end;

//Botao deletar
procedure TFrmClientes.BtnDeletarClick(Sender: TObject);
begin
  if MessageDlg('Deletar registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    QClientes.Delete;
  end
  else
    Abort;
end;

procedure TFrmClientes.BtnDeletarMouseLeave(Sender: TObject);
begin
  BtnDeletar.Font.Color := clBlack;
end;

procedure TFrmClientes.BtnDeletarMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  BtnDeletar.Font.Color := clRed;
end;

//Botao incluir
procedure TFrmClientes.BtnIncluirClick(Sender: TObject);
var Lproximo: Integer;
begin
  QClientes.Active := True;
  QClientes.Last;
  Lproximo := QClientesid_cliente.AsInteger + 1;
  QClientes.Append;
  QClientesid_cliente.AsInteger := Lproximo;
  EdtTipoPessoa.SetFocus;
end;

procedure TFrmClientes.BtnIncluirMouseLeave(Sender: TObject);
begin
  BtnIncluir.Font.Color := clBlack;
end;

procedure TFrmClientes.BtnIncluirMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  BtnIncluir.Font.Color := clRed;
end;

//Botao de pesquisa
procedure TFrmClientes.BtnPesquisarClick(Sender: TObject);
begin
  FrmPesquisaClientes := TFrmPesquisaClientes.Create(self);
  FrmPesquisaClientes.ShowModal;
  try

  finally
    FrmPesquisaClientes.Free;
    FrmPesquisaClientes := nil;
  end;
end;

//Botao salvar
procedure TFrmClientes.BtnSalvarClick(Sender: TObject);
begin
  try
    QClientes.Post;
    MessageDlg('Registro salvo', mtInformation, [mbOK], 0);
  except on Erro: Exception do
    begin
      if Erro.Message.Contains('not-null') then
      begin
        ShowMessage('Campo obrigatório');
      end
      else
      begin
        ShowMessage('Preencha os campos obrigatórios' + sLineBreak + Erro.Message);
      end;
    end;

  end;
end;

procedure TFrmClientes.BtnSalvarMouseLeave(Sender: TObject);
begin
  BtnSalvar.Font.Color := clBlack;
end;

procedure TFrmClientes.BtnSalvarMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  BtnSalvar.Font.Color := clred;
end;

end.
