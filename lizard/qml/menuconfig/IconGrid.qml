import QtQuick 1.1
import com.adrianomelo 1.0

ScanGroup {
    property string icons: ""

    height: iconGrid.height
    width: iconGrid.width

    TextEdit {
        anchors.fill: parent
        text: "Recent Openned"
        cursorVisible: true
        font.pixelSize: 20
    }

    Grid {
        id: iconGrid
        height: 50
        columns: 5
        anchors.horizontalCenter: parent.horizontalCenter

        Repeater {
            model: icons.split(",")
            Icon {
                iconName: model.modelData
            }
        }
    }
}
