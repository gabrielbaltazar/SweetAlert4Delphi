unit SweetAlert4D.Helper.JSON;

interface

uses
  System.JSON,
  System.SysUtils;

type
  TSweetAlert4DJSON = class helper for TJSONObject
  public
    function SetValue(AName: string; AValue: Boolean; ANullIfFalse: Boolean = True): TJSONObject; overload;
    function SetValue(AName: string; AValue: Integer; ANullIfEmpty: Boolean = True): TJSONObject; overload;
    function SetValue(AName, AValue: string; ANullIfEmpty: Boolean = True): TJSONObject; overload;
  end;

implementation

{ TSweetAlert4DJSON }

function TSweetAlert4DJSON.SetValue(AName: string; AValue, ANullIfFalse: Boolean): TJSONObject;
begin
  Result := Self;
  if (AValue) or (not (ANullIfFalse)) then
    Self.AddPair(AName, AValue);
end;

function TSweetAlert4DJSON.SetValue(AName: string; AValue: Integer; ANullIfEmpty: Boolean): TJSONObject;
begin
  Result := Self;
  if (AValue <> 0) or (not (ANullIfEmpty)) then
    Self.AddPair(AName, AValue);
end;

function TSweetAlert4DJSON.SetValue(AName, AValue: string; ANullIfEmpty: Boolean): TJSONObject;
begin
  Result := Self;
  if (AValue <> EmptyStr) or (not (ANullIfEmpty)) then
    Self.AddPair(AName, AValue);
end;

end.
