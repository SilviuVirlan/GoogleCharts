page 50101 BalancesByVendPie
{
    PageType = CardPart;
    Caption = 'Balances by Vendor - Pie';
    layout
    {
        area(Content)
        {
            usercontrol(Chart; GoogleCharts)
            {
                ApplicationArea = All;
                trigger ControlReady()
                var
                    _vendor: Record Vendor;
                    _jsonA: JsonArray;
                    _data: JsonArray;
                begin
                    _jsonA.Add('Customer');
                    _jsonA.Add('Sales');
                    _data.Add(_jsonA);
                    _vendor.SetAutoCalcFields("Balance (LCY)");
                    if _vendor.FindSet() then
                        repeat
                            clear(_jsonA);
                            if _vendor."Balance (LCY)" > 0 then begin
                                _jsonA.Add(_vendor.Name);
                                _jsonA.Add(_vendor."Balance (LCY)");
                                _data.Add(_jsonA);
                            end;
                        until _vendor.Next() = 0;
                    CurrPage.Chart.GoogleChart(_data, false, false);
                end;
            }
        }
    }
}