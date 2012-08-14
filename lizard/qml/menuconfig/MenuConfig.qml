// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import com.adrianomelo 1.0

Rectangle {
    anchors.centerIn: parent
    anchors.margins: 20
    color: "#ccc"
    width: 600
    height: parent.height - 20
    border.color: "#000"
    border.width: 1

    TextEdit {
        anchors.fill: parent
        text: "MenuConfig"
        cursorVisible: true
        font.pixelSize: 20
    }
}
