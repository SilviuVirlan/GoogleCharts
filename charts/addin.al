controladdin GoogleCharts
{
    Scripts = 'charts/script.js', 'https://www.gstatic.com/charts/loader.js';
    StartupScript = 'charts/startup.js';
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;

    event ControlReady()

    procedure GoogleChart(data: JsonArray; isDonut: Boolean; isBar: Boolean);
}