page 50101 "TwitterFeed"
{
    PageType = CardPart;
    SourceTable = Customer;
    layout
    {
        area(content)
        {
            usercontrol(Feed; TwitterFeedControl)
            {
                ApplicationArea = All;
                trigger ControlAddInReady()
                begin
                    ControlIsReady := true;
                    UpdateFeed();
                end;

            }
        }
    }
    trigger OnAfterGetCurrRecord()
    begin
        UpdateFeed();
    end;

    procedure UpdateFeed()
    begin
        if ControlIsReady then
            CurrPage.Feed.ShowFeed(Twitter);
    end;

    var
        ControlIsReady: Boolean;
}