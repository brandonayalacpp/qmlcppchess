import QtQuick 2.3
import QtQuick.Controls 1.2

Item {
    width: 450; height: 450

    property url whitePawnSource : "images/images/whitepawn.png"
    property url blackPawnSource : "images/images/blackpown.png"

    ListModel
    {
        id: listModelId
        ListElement { name:"1"}
        ListElement { name:"2"}
        ListElement { name:"3"}
        ListElement { name:"4"}
        ListElement { name:"5"}
        ListElement { name:"6"}
        ListElement { name:"7"}
        ListElement { name:"8"}
    }

    ListModel
    {
        id: lettersListModel
        ListElement { name:"A"}
        ListElement { name:"B"}
        ListElement { name:"C"}
        ListElement { name:"D"}
        ListElement { name:"E"}
        ListElement { name:"F"}
        ListElement { name:"G"}
        ListElement { name:"H"}
    }

    Column
    {
        Row
        {
            Label
            {
                width: 25; height: 25
                text:" "
                horizontalAlignment:Text.AlignHCenter
            }

            ListView
            {
                width: 400; height: 25
                model:listModelId
                orientation:ListView.Horizontal
                delegate:
                    Label
                    {
                        width: 50; height: 25
                        text:model.name
                        horizontalAlignment:Text.AlignHCenter
                        verticalAlignment:Text.AlignVCenter
                    }
            }

        }

        Row
        {
            ListView
            {
                width: 25; height: 400
                model:lettersListModel
                orientation:ListView.Vertical
                delegate:
                    Label
                    {
                        width: 25; height: 50
                        text:model.name
                        horizontalAlignment:Text.AlignHCenter
                        verticalAlignment:Text.AlignVCenter
                    }
            }
            Column
            {
                OddRow{}
                EvenRow{}
                OddRow{}
                EvenRow{}
                OddRow{}
                EvenRow{}
                OddRow{}
                EvenRow{}

            }
        }



        Image
        {
            id : whitePawn
            width: 50; height: 50
            source : whitePawnSource
        }
    }
}
