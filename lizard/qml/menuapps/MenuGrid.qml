// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import com.adrianomelo 1.0

ScanGroup {
    property string menus: ""

    height: grid.height
    width: grid.width

    Grid {
        id: grid
        height: 50
        columns: 3
        anchors.horizontalCenter: parent.horizontalCenter

        Repeater {
            model: menus.split(",")
            MenuButton {
                menuName: model.modelData
            }
        }
    }
}
