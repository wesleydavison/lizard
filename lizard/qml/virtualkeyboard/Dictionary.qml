import QtQuick 1.1
import com.adrianomelo 1.0

Rectangle{
    width:column.width
    height: 30
    anchors.top: parent.top
    color: "#ccc"
    border.color: "#000"
    border.width: 1


    WordRow {
        anchors.centerIn: parent
        words: "word1,word2,word3"
    }

}
