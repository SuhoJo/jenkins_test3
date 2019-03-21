program MyAmazingProduct;

uses
  Vcl.Forms,
  formMain in 'forms\formMain.pas' {Form1},
  calculate in 'units\calculate.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
