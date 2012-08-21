// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import com.adrianomelo 1.0

ScanGroup {
    property string menus: ""

    height: row.height
    width: row.width

    Row {
        id: row
        height: 50
        anchors.horizontalCenter: parent.horizontalCenter

        Repeater {
            model: menus.split(",")
            MenuButton {
                menuName: model.modelData
            }
        }
    }

    /*Rectangle {
        anchors.centerIn: parent
        width: parent.width - border.width * 2
        height: parent.height - border.width * 2
        border.width: 2
        border.color: "black"
        visible: parent.selected
        color: "transparent"
    }*/
}
