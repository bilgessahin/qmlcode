import QtQuick 2.0

Item {

    property var text: ""
    property var rwidth: rectangle.width
    property var rheight: rectangle.height

    Text {
        id: textComponent
        font.pixelSize: 20
        font.bold: true
        text: parent.text
        anchors.verticalCenter: parent.verticalCenter
    }

    Rectangle {
        id: rectangle
        width: 120
        height: 30
        color: "#444343"
        anchors.left: textComponent.right
        anchors.verticalCenter: textComponent.verticalCenter
        anchors.leftMargin: 10
        border.color: "black"
        border.width: 0.5
        TextInput {
            anchors.fill: parent
            color: "white"
        }
    }
}
