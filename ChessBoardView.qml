import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.15

Item {
    width: 450; height: 450

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

            GridLayout
            {
                id:someLayout
                width: 400; height: 400
                columns: 8
                rows: 8

                function isNumberEven(number)
                {
                    return number % 2 == 0 ? true:false;
                }

                function createSpriteObjects() {
                    var component = Qt.createComponent("CellBoard.qml");
                    if (component.status == Component.Ready)
                    {
                        for(let i = 0; i < 8; ++i)
                        {
                            for(let j = 0; j < 8; ++j)
                            {
                                var button = component.createObject(someLayout);

                                if(!isNumberEven(i + 1))
                                {
                                    if(isNumberEven(j + 1))
                                    {
                                        button.color = "green";
                                    }
                                    else
                                    {
                                        button.color = "gray";
                                    }

                                }
                                else
                                {
                                    if(!isNumberEven(j + 1))
                                    {
                                        button.color = "green";
                                    }
                                    else
                                    {
                                        button.color = "gray";
                                    }
                                }
                            }
                        }
                    }

                }
                Component.onCompleted: createSpriteObjects()
            }
        }
    }
}
