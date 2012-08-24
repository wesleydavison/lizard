import QtQuick 1.1
import com.adrianomelo 1.0

ScanGroup {
    property string iconName: ""

    width: 50
    height: 50

    Image {
        anchors.fill: parent
        source: "../virtualkeyboard/images/button_bg.png"

        Text {
            anchors.centerIn: parent
            text: iconName
            color: "blue"
        }
    }
}
