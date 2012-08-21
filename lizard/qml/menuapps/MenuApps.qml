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
                //menus: "FILE,new,open...,save,save as...,close, quit"
                menus: "FILE"
            }

            MenuColumn {
                id:centerColumn
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                //menus:"EDIT,copy,cut,paste,undo,redo"
                menus:"EDIT"


            }

            MenuColumn {
                id:rightColumn
                anchors.right: parent.right
                anchors.top: parent.top
                //menus: "SEARCH,find...,find next,find prev,replace"
                menus: "SEARCH"
            }
        }

        ScanGroup{
            id:menuOptions

            y: menuGroups.height + 10

            Row{
                id:menuGroupItens

                MenuRow{
                    id:menuItens
                    menus:"copy,cut,paste,undo,redo"
                }

            }
        }



    }
}
