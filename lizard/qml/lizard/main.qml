import QtQuick 1.1
import com.adrianomelo 1.0
import "../virtualkeyboard/"
import "../texteditor/"
import "../menuapps/"
import "../menuconfig/"

/* Main Window */
Rectangle {
    color: "#8e8d98"
    width: 1024
    height: 500

    function next()
    {
        control.next();
    }

    Item {
        id:areaTotal
        anchors.fill: parent


        Item{
            id:areaTopLeft
            anchors.left: parent.left
            anchors.top: parent.top            

            width: 800
            height: 250

            TextEditor {
                id: textEditor
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter

                width: parent.width - 20
                height: parent.height - 20

            }

        }


        Item{
            id:areaBottomLeft

            width: 800
            height: 250

            anchors.top: areaTopLeft.bottom
            anchors.left: parent.left

            /*width:areaTotal.width - areaBottomRight.width
            height:areaTotal.height - areaTopLeft.height*/

            VirtualKeyboard {
                id: virtualKeyboard

                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
            }


        }

        Item{
            id:areaRight

            width: 224
            height: 500

            anchors.right: parent.right
            anchors.top: parent.top

            //width: areaTotal.width - areaTopLeft.width
            //height: areaTotal.height - areaBottomRight.height

            MenuApps{
                id:menuApps
                //anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                //width: parent.width - 20
                //height: parent.height - 20

            }
        }
    }

    ScanningControl {
        id: control
    }

    Timer {
        running: true
        interval: 1000
        repeat: true
        onTriggered: parent.next();
    }

    focus: true
    Keys.onPressed: {
        control.select();
    }

    MouseArea {
        x: 0
        y: -12
        anchors.rightMargin: 0
        anchors.bottomMargin: 12
        anchors.leftMargin: 0
        anchors.topMargin: -12
        anchors.fill: parent
        onPressed: control.select();
    }
}
