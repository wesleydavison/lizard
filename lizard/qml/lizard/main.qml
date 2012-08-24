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

            width: 774
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

            width: 774
            height: 250

            anchors.top: areaTopLeft.bottom
            anchors.left: parent.left

            VirtualKeyboard {
                id: virtualKeyboard

                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
            }


        }

        Item{
            id:areaTopRight

            width: 250
            height: 250

            anchors.right: parent.right
            anchors.top: parent.top

            MenuApps{
                id:menuTeclado
                margins: 10
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter

                width: parent.width - 20
                height: parent.height - 20

            }
        }

        Item{
            id:areaBottomRight

            width: 250
            height: 250
            anchors.right: parent.right
            anchors.bottom: parent.bottom

            Taskbar{
                id:taskbar

                margins: 10
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter

                width: parent.width - 20
                height: parent.height - 20

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
