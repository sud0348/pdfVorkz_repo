import QtQuick 2.15
import QtQuick.Controls 2.15



RadioButton {
    id: control
    text: qsTr("RadioButton")
    checked: true

    indicator: Rectangle {
        id: rectangle
        implicitWidth: 26 - 6.5
        implicitHeight: 26 - 6.5
        x: control.leftPadding
        y: parent.height / 2 - height / 2
        radius: 13
        border.color: "#00aaff"

        Rectangle {
            width: 14 - 3.25
            height: 14 - 3.25
            x: 6
            y: 6
            radius: 7
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            color: control.down ? "#009be8" : "#00aaff"
            visible: control.checked
        }
    }

    contentItem: Text {
        text: control.text
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        font: control.font
        opacity: enabled ? 1.0 : 0.3
        color: control.down ? "#009be8" : "#ffffff"
        verticalAlignment: Text.AlignVCenter
        anchors.leftMargin: 7
        leftPadding: control.indicator.width + control.spacing
    }
}
/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:6;height:30;width:110}
}
##^##*/
