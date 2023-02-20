import QtQuick 2.3
import QtQuick.Layouts 1.15




Item
{
    //property int xPosition : 0
    property url whitePawnSource : "images/images/whitepawn.png"
    //property url blackPawnSource : "images/images/blackpown.png"
    Image
    {
       // id : whitePawn
        width: 50; height: 50
        source : whitePawnSource
        Layout.row : 1
        Layout.column: 1
    }
}
