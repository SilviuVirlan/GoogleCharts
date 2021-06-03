pageextension 50100 RoleCenterExt extends "Order Processor Role Center"
{
    layout
    {
        addbefore(Control1)
        {
            part(addinSalesByCustPie; SalesByCustDonut)
            {
                ApplicationArea = Basic, Suite;
            }
            part(addinSalesByCustBar; SalesByCustBar)
            {
                ApplicationArea = Basic, Suite;
            }
        }

        addafter(addinSalesByCustBar)
        {
            part(myvend; "My Vendors")
            {
                ApplicationArea = Basic, Suite;
            }
            part(addInBalByVendPie; BalancesByVendPie)
            {
                ApplicationArea = Basic, Suite;
            }
            part(addInBalByVendBar; BalancesByVendBar)
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }
}