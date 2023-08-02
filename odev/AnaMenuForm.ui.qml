import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Item {

    Row {
        id: layoutRow
        width: 1400
        height: 50
        x: 20
        Text {
            font.pixelSize: 15
            font.bold: true
            text: "HORN"
            anchors.verticalCenter: parent.verticalCenter
            x: 20
        }

        MyButton {
            buttonTextInfo: "Auto"
            buttonColor: "#e35815"
        }

        Text {
            font.pixelSize: 15
            font.bold: true
            text: "NAVTEX"
            anchors.verticalCenter: parent.verticalCenter
        }

        MyButton {
            buttonTextInfo: "Message"
            buttonColor: "#e35815"
        }
    }

    Text {
        id: alarmText
        anchors.left: layoutRow.left
        anchors.leftMargin: 388
        font.pixelSize: 15
        anchors.verticalCenterOffset: -214
        font.bold: true
        text: "ALARMS"
        anchors.verticalCenter: parent.verticalCenter
    }
    MyButton {
        id: button1
        y: 0
        anchors.left: alarmText.left
        anchors.leftMargin: 32
        buttonTextInfo: "Fire"
        buttonColor: "#770102"
    }

    MyButton {
        y: 0
        anchors.left: button1.left
        anchors.leftMargin: 82
        buttonTextInfo: "Collision"
        buttonColor: "#770102"
    }
    MyButton {
        buttonTextInfo: "Life Boat"
        buttonColor: "#770102"
    }
    MyButton {
        buttonTextInfo: "MOB"
        buttonColor: "#770102"
    }
    MyButton {
        buttonTextInfo: "General"
        buttonColor: "#770102"
    }
    MyButton {
        buttonTextInfo: "Steering"
        buttonColor: "#770102"
    }
    MyButton {
        buttonTextInfo: "ACK"
        buttonColor: "#770102"
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

