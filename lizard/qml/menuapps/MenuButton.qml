// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import com.adrianomelo 1.0

ScanGroup {
    property string menuName: ""

    width: 70
    height: 50

    Image {
        anchors.fill: parent
        source: "../virtualkeyboard/images/button_bg.png"

        Text {
            anchors.centerIn: parent
            text: menuName
            color: "black"
        }
    }

}
