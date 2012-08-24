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

    Rectangle {
        id:windowTitle
        anchors.top: parent.top
        color: "#ccc"
        border.color: "#000"
        border.width: 1
        width:parent.width
        height: parent.height*0.1

        TextEdit {
            anchors.fill: parent
            text: "Recent Openned"
            horizontalAlignment: TextEdit.AlignHCenter
            verticalAlignment: TextEdit.AlignVCenter
            font.pixelSize: 15
        }
    }

    ScanGroup {
        id: scangroup1
        x: margins
        y: margins
        anchors.top: windowTitle.bottom
        //anchors.horizontalCenter: parent.horizontalCenter

        IconGrid{
            id:recentOpennedApps
            icons: "icon1,icon2,icon3"
        }
    }

    Clock{
        id:clock

        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width:parent.width*0.8
        height: parent.height*0.1

    }
}
