import QtQuick 2.0
import QtQuick.Controls 2.15


Rectangle {
    id: rectangle
    color: "#2c313c"
    anchors.fill: parent

    Label {
        id: label
        x: 275
        y: 203
        color: "#ffffff"
        text: qsTr("Split PDF Page")
        anchors.verticalCenter: parent.verticalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pointSize: 16
    }
}


