unit Unit2;

interface
type
TFuncao = class
  class procedure Absoluto(Sender: TObject);
end;

implementation

uses
  Vcl.StdCtrls, System.SysUtils;

{ TFuncao }

class procedure TFuncao.Absoluto(Sender: TObject);
var Edit1: TEdit absolute Sender;
    Memo1: TMemo absolute Sender;
begin
  if Sender is TEdit then
    Edit1.Text := UpperCase(Edit1.Text)
  else if Sender is TMemo then
    Memo1.Text := UpperCase(Memo1.Text);
end;

end.
