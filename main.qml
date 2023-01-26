import QtQuick 2.3
import QtQuick.Window 2.12
import QtQuick.Controls 1.2

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

//    Connections
//    {
//        target: MessageClass
//        onMessageChange: textId.text = value;
//    }

    Column
    {
        Text
        {
            id: textId
            text: MessageClass.message
        }
        Button
        {
            text: "Change text"
            onClicked: MessageClass.doMessageChange()
        }
        Button
        {
            text: "New Button"
            onClicked:{
                var result = MessageClass.sendMessageFromCpp("This is QML")
                print("result:" + result)
            }
        }
    }

}
