pageextension 50210 "CustomerCardExt" extends "Customer Card"
{
    layout
    {
        // Adding a new control field 'ShoeSize' in the group 'General'

        addlast("Address & Contact")
        {
            field(Twitter; Twitter)
            {

                ApplicationArea = All;
            }
        }
        addfirst(FactBoxes)
        {
            part(TwitterFeed; TwitterFeed)
            {
                ApplicationArea = All;
                SubPageLink = "No." = FIELD("No.");
                Caption = 'Tweets';
            }
        }

    }
}