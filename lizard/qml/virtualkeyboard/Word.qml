// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import com.adrianomelo 1.0

ScanGroup {
    property string word: ""

    width: 100
    height: 30

    Image {
        anchors.fill: parent
        source: "images/button_bg.png"

        Text {
            anchors.centerIn: parent
            text: word
            color: "black"
        }
    }
}
