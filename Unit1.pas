unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lblPeso: TLabel;
    lblAltura: TLabel;
    edtPeso: TEdit;
    edtAltura: TEdit;
    btnCalcular: TButton;
    lblResultado: TLabel;
    lblClassificacao: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    function ClassificarIMC(IMC: Double): string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.ClassificarIMC(IMC: Double): string;
begin
  if IMC < 18.5 then
    Result := 'Abaixo do peso'
  else if IMC < 25 then
    Result := 'Peso normal'
  else if IMC < 30 then
    Result := 'Sobrepeso'
  else if IMC < 35 then
    Result := 'Obesidade grau I'
  else if IMC < 40 then
    Result := 'Obesidade grau II'
  else
    Result := 'Obesidade grau III';
end;

procedure TForm1.btnCalcularClick(Sender: TObject);
var
  Peso, Altura, IMC: Double;
begin
  // Valida o campo peso
  if not TryStrToFloat(StringReplace(edtPeso.Text, '.', ',', []), Peso) then
  begin
    ShowMessage('Digite um peso válido (em kg). Ex: 70,5');
    edtPeso.SetFocus;
    Exit;
  end;

  // Valida o campo altura
  if not TryStrToFloat(StringReplace(edtAltura.Text, '.', ',', []), Altura) then
  begin
    ShowMessage('Digite uma altura válida (em metros). Ex: 1,75');
    edtAltura.SetFocus;
    Exit;
  end;

  if (Peso <= 0) or (Altura <= 0) then
  begin
    ShowMessage('Peso e altura devem ser maiores que zero.');
    Exit;
  end;

  IMC := Peso / (Altura * Altura);

   lblResultado.Caption := Format('Seu IMC: %.2f', [IMC]);
   lblClassificacao.Caption := 'Classificacao: ' + ClassificarIMC(IMC);
end;

end.
