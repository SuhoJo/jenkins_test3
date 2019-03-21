unit testcalc;

interface
uses
  calculate,
  DUnitX.TestFramework;

type

  [TestFixture]
  TTestCalc = class(TObject)                                                     // DUnitx 생성때 작성한 이름
  private
    calc: TCalculate;
  public
    [Setup] procedure Setup;
    [TearDown] procedure TearDown;

    // Test with TestCase Attribute to supply parameters.
    [TestCase('TestA','1,2,3')]
    [TestCase('TestB','3,4,7')]
    procedure Test2(const A : uint32; const B : uint32; const R : uint32);
  end;

implementation


procedure TTestCalc.Setup;
begin
  Calc := TCalculate.Create;
end;

procedure TTestCalc.TearDown;
begin
  Calc.Free;
end;

procedure TTestCalc.Test2(const A : uint32; const B : uint32; const R : uint32);
var
  v : uint32;
begin
    // Arrange
    // Act
    v := calc.add(A,B);
    // Assert
    if v=r  then
    begin
        Assert.Pass('values match');
    end
    else
    begin
        Assert.Fail('values do not match');
    end;

end;

initialization
  TDUnitX.RegisterTestFixture(TTestCalc);
end.
