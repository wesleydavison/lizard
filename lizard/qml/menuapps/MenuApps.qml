// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import com.adrianomelo 1.0

Rectangle {
    id: menubox
    property int margins: 10

    anchors.centerIn: parent
    anchors.margins: 20
    color: "#ddd"
    border.color: "#000"
    border.width: 1

    width: parent.width - 20
    height: parent.height - 20

    Rectangle {
        id:windowTitle
        anchors.top: parent.top
        color: "#ccc"
        border.color: "#000"
        border.width: 1
        width:parent.width
        height: parent.height*0.1

        TextEdit {
            anchors.fill: parent
            text: "Menu"
            horizontalAlignment: TextEdit.AlignHCenter
            verticalAlignment: TextEdit.AlignVCenter
            font.pixelSize: 15
        }
    }

    ScanGroup {
        id: scangroup1
        x: margins
        y: margins
        anchors.top: windowTitle.bottom

        Row {
            id: menuGroups

            MenuRow {
                anchors.top: parent.top
                menus: "FILE"
            }

            MenuRow {
                anchors.verticalCenter: parent.verticalCenter
                menus:"EDIT"
            }

            MenuRow {
                anchors.bottom: parent.bottom
                menus: "SEARCH"
            }
        }


        Row{
            id:menuGroupOptions
            y: menuGroups.height + 10
            anchors.right: menuGroups.right
            width: menuGroups.width

            MenuGrid{
                id:menuItens

                state:"menuEDIT"

                states: [
                    State{
                        name:"menuFILE"
                        PropertyChanges {
                            target: menuItens
                            menus:"new,open...,save,save as...,close,quit"
                        }

                    },
                    State{
                        name:"menuEDIT"
                        PropertyChanges {
                            target: menuItens
                            menus:"copy,cut,paste,undo,redo"

                        }
                    },
                    State{
                        name:"menuSEARCH"
                        PropertyChanges {
                            target: menuItens
                            menus:"find...,find next,find prev,replace"

                        }
                    }

                ]
            }

        }

    }
}
