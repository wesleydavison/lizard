// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import com.adrianomelo 1.0

ScanGroup {
    property string menuName: ""

    width: 75
    height: 66

    Image {
        anchors.fill: parent
        source: "../virtualkeyboard/images/button_bg.png"

        Text {
            anchors.centerIn: parent
            text: menuName
            color: "black"
        }
    }

    /*Rectangle {
        anchors.centerIn: parent
        width: parent.width - border.width * 2
        height: parent.height - border.width * 2
        visible: parent.selected

        color: "transparent"
        border.width: 2
        border.color: "black"
        opacity: 0.8
    }*/

    /*onSelectedChanged: {
        if (selected)
            console.log("Selected " + value);
    }*/
}
