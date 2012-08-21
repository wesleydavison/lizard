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

    ScanGroup {
        id: scangroup1
        x: margins
        y: margins

        Row {
            id: menuGroups
            width: leftColumn.width + centerColumn.width + rightColumn.width + 10


            MenuColumn {
                id:leftColumn
                anchors.left: parent.left
                anchors.top: parent.top
                menus: "FILE"
            }

            MenuColumn {
                id:centerColumn
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                menus:"EDIT"


            }

            MenuColumn {
                id:rightColumn
                anchors.right: parent.right
                anchors.top: parent.top
                menus: "SEARCH"
            }
        }

        ScanGroup{
            id:menuOptions

            y: menuGroups.height + 10

            Column{
                id:menuGroupItens

                MenuColumn{
                    id:menuItens

                    state:"menuFILE"

                    states: [
                        State{
                            name:"menuFILE"
                            PropertyChanges {
                                target: menuItens
                                menus:"new,open...,save,save as...,close, quit"
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
}
