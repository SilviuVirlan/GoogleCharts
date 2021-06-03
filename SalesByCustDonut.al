page 50100 SalesByCustDonut
{
    PageType = CardPart;
    Caption = 'Sales by Customer - Donut';
    layout
    {
        area(Content)
        {
            usercontrol(Chart; GoogleCharts)
            {
                ApplicationArea = All;
                trigger ControlReady()
                var
                    Customer: Record Customer;
                    JsonA: JsonArray;
                    Data: JsonArray;
                    cnt: Integer;
                begin
                    JsonA.Add('Customer');
                    JsonA.Add('Sales');
                    Data.Add(JsonA);
                    Customer.SetAutoCalcFields("Sales (LCY)");
                    if Customer.FindSet() then
                        repeat
                            clear(JsonA);
                            if Customer."Sales (LCY)" > 0 then begin
                                JsonA.Add(Customer.Name);
                                JsonA.Add(Customer."Sales (LCY)");
                                Data.Add(JsonA);
                            end;
                        until Customer.Next() = 0;
                    CurrPage.Chart.GoogleChart(Data, true, false);
                end;

            }
        }
    }

}