import QtQuick 2.0
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "../controls"


Rectangle {
    id: rectangle
    color: "#2c313c"
    anchors.fill: parent

    Column {
        id: column
        anchors.fill: parent


        HomeMenuBtn{
            id: mergeBtn
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 20

        }

        HomeMenuBtn {
            id: splitBtn
            text: "Split PDF"
            anchors.verticalCenter: parent.verticalCenter
            iconLocation: "../../images/svg_images/call_split-24px.svg"
            checked: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        HomeMenuBtn {
            id: convertBtn
            text: "Convert PDF"
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            iconLocation: "../../images/svg_images/loop-24px.svg"
            anchors.rightMargin: 20
        }
    }


}




/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:800}
}
##^##*/
