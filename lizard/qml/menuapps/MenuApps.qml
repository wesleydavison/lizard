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

        Column {
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

        ScanGroup{
            id:menuOptions

            x: menuGroups.width + 10

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
