// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import com.adrianomelo 1.0

ScanGroup {
    property string words: ""

    height: row.height
    width: row.width

    Row{
        id: row
        height: 30
        anchors.horizontalCenter: parent.horizontalCenter

        Repeater {
            model: words.split(",")
            Word {
                word: model.modelData
            }
        }
    }
}
