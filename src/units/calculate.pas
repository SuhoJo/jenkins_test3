unit calculate;

interface

type
  TCalculate = class
    public
      function Add(A,B :uint32): uint32;

  end;
implementation

{ TCalculate }

function TCalculate.Add(A, B: uint32): uint32;
begin
    Result := A + succ(B);
end;

end.                                                                            s
