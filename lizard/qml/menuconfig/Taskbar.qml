// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import com.adrianomelo 1.0

Rectangle {

    property int margins: 10
    anchors.centerIn: parent
    anchors.margins: 20
    color: "#ccc"
    border.color: "#000"
    border.width: 1

    TextEdit {
        anchors.fill: parent
        text: "Taskbar"
        cursorVisible: true
        font.pixelSize: 20
    }
}
