import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button {
    id: homeMenuButtons

    //Custom Properties
    property color colorDefault: "#23272E"
    property color colorMouseOver: "#00a1f1"
    property color colorPressed: "#23272E"
    property url iconLocation: "../../images/svg_images/call_merge-24px.svg"

    QtObject{
        id: internal

        property var dynamicColor: if(homeMenuButtons.down){
                                       homeMenuButtons.down ? colorPressed : colorDefault
                                   } else {
                                       homeMenuButtons.hovered ? colorMouseOver : colorDefault
                                   }
    }


    text: qsTr("Merge PDF")
    implicitWidth: 200
    implicitHeight: 260

    background: Rectangle{
        color: internal.dynamicColor

        Rectangle {
            id: rectangle
            x: 48
            width: 180
            height: 180
            color: "#00000000"
            radius: 7
            border.color: "#c3c3c3"
            border.width: 3
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter

            Image {
                id: image1
                width: 160
                height: 160
                anchors.fill: parent
                source: iconLocation
                sourceSize.height: 160
                sourceSize.width: 160
                fillMode: Image.PreserveAspectFit
                antialiasing: false
            }
            ColorOverlay{
                anchors.fill: image1
                source: image1
                color: "#c3c3c3"
                width: 160
                height: 160
                antialiasing: false

            }
        }
    }




    contentItem: Item {
        id: item1
        Text {
            id: textBtn
            text: homeMenuButtons.text
            anchors.bottom: parent.bottom
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.bottomMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 12
            color: "#c3c3c3"
        }

    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:260;width:200}
}
##^##*/
