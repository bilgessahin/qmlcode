import QtQuick 2.0
import QtQuick.Layouts 1.12

Rectangle{
    anchors.top: parent.top
    width: parent.width
    height: 50
    color: "transparent"
    Rectangle{
        id: layoutRow
        width: 340
        height: 50
        x: 20
        color: "transparent"
        Text {
            id: firstText
            font.pixelSize: 15
            font.bold: true
            text: "HORN"
            anchors.verticalCenter: parent.verticalCenter
        }

        MyButton{
            itemWidth: 120
            id: firstButton
            anchors.left: firstText.right
            buttonTextInfo: "Auto"
            buttonColor: "#dd4001"
        }

        Text {
            id: secondText
            anchors.left: firstButton.right
            font.pixelSize: 15
            font.bold: true
            text: "NAVTEX"
            anchors.verticalCenter: parent.verticalCenter
        }

        MyButton{
            itemWidth: 120
            anchors.left: secondText.right
            buttonTextInfo: "Message"
            buttonColor: "#dd4001"
        }
    }

    Text {
        id: alarmText
        anchors.left: layoutRow.right
        anchors.leftMargin: 15
        font.pixelSize: 15
        font.bold: true
        text: "ALARMS"
        anchors.verticalCenter: parent.verticalCenter
    }
    MyButton{
        id: button1
        itemWidth: 85
        anchors.left: alarmText.right
        buttonTextInfo: "Fire"
        buttonColor: "#770102"
    }

    MyButton{
        id: button2
        itemWidth: 85
        anchors.left: button1.right
        buttonTextInfo: "Collision"
        buttonColor: "#770102"
    }
    MyButton{
        id: button3
        anchors.left: button2.right
        itemWidth: 85
        buttonTextInfo: "Life Boat"
        buttonColor: "#770102"
    }
    MyButton{
        id: button4
        anchors.left: button3.right
        itemWidth: 85
        buttonTextInfo: "MOB"
        buttonColor: "#770102"
    }
    MyButton{
        id: button5
        anchors.left: button4.right
        itemWidth: 85
        buttonTextInfo: "General"
        buttonColor: "#770102"
    }
    MyButton{
        id: button6
        anchors.left: button5.right
        itemWidth: 85
        buttonTextInfo: "Steering"
        buttonColor: "#770102"
    }
    MyButton{
        anchors.left: button6.right
        itemWidth: 120
        buttonTextInfo: "ACK"
        buttonColor: "#dd4001"
        anchors.leftMargin: 15
    }


}
