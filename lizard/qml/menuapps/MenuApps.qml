// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import com.adrianomelo 1.0

Rectangle {
    property int margins: 10

    anchors.centerIn: parent
    anchors.margins: 20
    color: "#ffffff"
    border.color: "#000"
    border.width: 3

    width: row.width + margins * 2
    height: 5*row.height + margins * 2

    ScanGroup {
        x: margins
        y: margins

        Row {
            id: row

            anchors.verticalCenter: parent.parent.verticalCenter

            MenuColumn {

                anchors.verticalCenter: parent.verticalCenter
                menus: "novo,abrir,salvar,fechar,sair"
            }

            MenuColumn {

                anchors.verticalCenter: parent.verticalCenter
                menus: "copiar,cortar,colar,desfazer,refazer"
            }

        }
    }
}
