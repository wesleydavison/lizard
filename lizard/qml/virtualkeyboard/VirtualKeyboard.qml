import QtQuick 1.1
import com.adrianomelo 1.0

Rectangle {
    property int margins: 10

    color: "#8e8d98"
    width: column.width + margins * 2
    height: column.height + margins * 2 + dictionary.height

    border.width: 1



    ScanGroup {
        id:keyboard
        x: margins
        y: margins

        Dictionary{
            id:dictionary
        }

        Column {
            id: column
            anchors.top: dictionary.bottom
            anchors.topMargin: margins


            LettersRow {
                anchors.horizontalCenter: parent.horizontalCenter
                letters: "qwertyuiop"
            }

            LettersRow {
                anchors.horizontalCenter: parent.horizontalCenter
                letters: "asdfghjkl"
            }

            LettersRow {
                anchors.horizontalCenter: parent.horizontalCenter
                letters: "zxcvbnm"
            }
        }
    }
}
