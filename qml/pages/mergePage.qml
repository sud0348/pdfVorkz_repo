import QtQuick 2.15
import QtQuick.Controls 2.15
import "../controls"

Rectangle {
    id: rectangle
    color: "#2c313c"
    anchors.fill: parent





    Rectangle {
        id: fileTreeRectangle
        x: 17
        y: 272
        height: 200
        color: "#232730"
        anchors.left: parent.left
        anchors.right: livePreviewRectangle.left
        anchors.top: parent.top
        anchors.rightMargin: 28
        anchors.leftMargin: 30
        anchors.topMargin: 50


        //        TreeView {
        //            anchors.fill: parent
        //            sortIndicatorVisible : True
        //            TableViewColumn {
        //                title: "Name"
        //                role: "fileName"
        //                width: 300

        //            }
        //            TableViewColumn {
        //                title: "Created On"
        //                role: "filePermissions"
        //                width: 100
        //            }
        //            TableViewColumn {
        //                title: "Size"
        //                role: "filePermissions"
        //                width: 100
        //            }

        //        }

    }

    CustomTextField {
        id: outputfolderText
        width: 351
        height: 40
        anchors.left: fileTreeRectangle.left
        anchors.top: rectangle1.bottom
        anchors.topMargin: 25
        anchors.leftMargin: 0
        placeholderText: "Output Folder Path"
    }

    CustomButton {
        id: browseFolderBtn
        y: 272
        width: 100
        height: 30
        text: "Browse"
        anchors.verticalCenter: outputfolderText.verticalCenter
        anchors.left: outputfolderText.right
        anchors.verticalCenterOffset: 0
        anchors.leftMargin: -107
        colorDefault: "#3a414f"

    }

    CustomButton {
        id: mergeBtn
        x: 17
        width: 124
        height: 63
        text: "Merge"
        anchors.right: livePreviewRectangle.left
        anchors.top: addFilesButton.bottom
        anchors.topMargin: 50
        colorPressed: "#dd4d52"
        colorMouseOver: "#ff595c"
        anchors.rightMargin: 25
        colorDefault: "#ff474a"


    }

    Rectangle {
        id: rectangle1
        width: 396
        height: 79
        color: "#00000000"
        radius: 0
        border.color: "#00000000"
        border.width: 1
        anchors.left: fileTreeRectangle.left
        anchors.top: fileTreeRectangle.bottom
        anchors.leftMargin: 0
        anchors.topMargin: 22

        GroupBox {
            id: groupBox

            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom

            anchors.leftMargin: 0
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            title: qsTr("Select Folder to Save:")

            label: Label{
                width: groupBox.availableWidth
                text: groupBox.title
                color: "#ffffff"
                elide: Text.ElideRight
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 0
                anchors.topMargin: 0

            }

            background: Rectangle{
                color: "transparent"
                border.color: "transparent"
            }

            Column {
                id: column
                anchors.fill: parent
                anchors.topMargin: -5

                CustomRadioButton {
                    id: radioBtn1
                    text: "Within Same Folder"
                    checked: false

                }

                CustomRadioButton {
                    id: radioBtn2
                    text: "Output Folder"
                }
            }
        }

        GroupBox {
            id: groupBox1
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 0
            title: qsTr("Select File Name to Save:")
            background: Rectangle {
                color: "#00000000"
                border.color: "#00000000"
            }
            anchors.topMargin: 0
            Column {
                id: column1
                anchors.fill: parent
                CustomRadioButton {
                    id: radioBtn3
                    text: "Same as Parent Folder Name"
                    checked: false
                }

                CustomRadioButton {
                    id: radioBtn4
                    text: "outputMergeFile_001"
                }
                anchors.topMargin: -5
            }
            label: Label {
                width: groupBox1.availableWidth
                color: "#ffffff"
                text: groupBox1.title
                elide: Text.ElideRight
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.leftMargin: 0
            }
            anchors.bottomMargin: 0
        }
    }

    CustomButton {
        id: addFilesButton
        x: 17
        width: 100
        height: 30
        text: "Add Files"
        anchors.right: fileTreeRectangle.right
        anchors.top: fileTreeRectangle.bottom
        anchors.topMargin: 25
        anchors.rightMargin: 0
        colorDefault: "#00aaff"
    }

    Rectangle {
        id: livePreviewRectangle
        x: 551
        width: 0
        color: "#232730"
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        clip: true
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        anchors.rightMargin: 0

        Label {
            id: label
            color: "#ffffff"
            text: qsTr("Live Preview")
            anchors.left: parent.left
            anchors.top: parent.top
            clip: false
            font.pointSize: 6
            anchors.topMargin: 15
            anchors.leftMargin: 24
        }
    }

    CustomSwitchToggleBtn {
        id: privewSwitch
        x: 471
        text: "Live Preview"
        anchors.right: livePreviewRectangle.left
        anchors.top: parent.top
        anchors.bottom: fileTreeRectangle.top
        anchors.rightMargin: 20
        anchors.topMargin: 2
        anchors.bottomMargin: 10
        onClicked: {
            if(livePreviewRectangle.width == 0){
                livePreviewRectangle.width = rectangle.width * 0.4
            }
            else{
                livePreviewRectangle.width = 0
            }
        }
    }
}



/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.33;height:480;width:800}D{i:2}D{i:3}D{i:4}D{i:5}
D{i:18}D{i:21}
}
##^##*/
