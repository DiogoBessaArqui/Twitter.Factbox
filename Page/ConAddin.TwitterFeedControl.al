controladdin "TwitterFeedControl"
{
    RequestedHeight = 320;
    RequestedWidth = 320;
    VerticalStretch = false;
    VerticalShrink = false;
    HorizontalStretch = false;
    HorizontalShrink = false;
    Scripts = 'Scripts/Twitter.js';
    StartupScript = 'Scripts/Start.js';
    event ControlAddInReady();

    procedure ShowFeed(Twitter: Text)

}