// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import com.adrianomelo 1.0

Rectangle {

    //anchors.centerIn: parent
    anchors.margins: 20
    color: "#fbe"
    border.color: "#000"
    border.width: 1

    TextEdit {
        anchors.fill: parent
        text: "Recife,22 Out 2012 - 23:56"
        horizontalAlignment: TextEdit.AlignHCenter
        verticalAlignment: TextEdit.AlignVCenter
        font.pixelSize: 15
    }
}
