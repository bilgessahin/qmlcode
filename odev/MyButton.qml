import QtQuick 2.0

Item {
    id: baseComponent
    width: itemWidth
    height: 40

    property var buttonTextInfo: buttonText.text
    property var buttonColor: colorRec.color
    property var itemWidth: baseComponent.width

    Item {
        id: firstItem
        width: 80
        height: 20
        anchors.centerIn: parent
        clip: true

        Rectangle {
            anchors.fill: parent
            anchors.bottomMargin: -radius
            opacity: 0.5
            border.width: 5
            border.color: "#EFEBE8"
            radius: 7
            color: "transparent"
        }
    }
    Item {
        width: 80
        height: 20
        anchors.top: firstItem.bottom
        clip: true
        x: firstItem.x
        anchors.topMargin: -2
        Rectangle {
            anchors.fill: parent
            anchors.topMargin: -radius
            border.width: 5
            border.color: "black"
            radius: 7
            color: "transparent"
        }
    }

    Rectangle {
        id: colorRec
        x: firstItem.x + 5
        y: firstItem.y + 5
        width: 70
        height: 28
        radius: 3
        color: buttonColor//"#e35815"
        border.width: 1
        border.color: "#4D504B"
    }

    Text {
        id: buttonText
        text: buttonTextInfo
        anchors.verticalCenter: colorRec.verticalCenter
        anchors.horizontalCenter: colorRec.horizontalCenter
    }


}
