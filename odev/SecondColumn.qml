import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

Column{
    id: columnParent
    spacing: 5
    width: 180
    height: 125


    Row{
        width: parent.width
        x: 15
        height: 30

        Text {
            id: textComponent
            font.pixelSize: 20
            color: "black"
            font.bold: true
            anchors.leftMargin: 15
            y: 10
            text: "SET"
        }

        Rectangle {
            id: rectangle
            width: 100
            height: 15
            color: "#444343"
            anchors.left: textComponent.right
            anchors.verticalCenter: textComponent.verticalCenter
            anchors.leftMargin: 42
            border.color: "black"
            border.width: 0.5
            TextInput {
                anchors.fill: parent
                color: "white"
            }
        }

    }

    Rectangle{
        width: columnParent.width
        anchors.centerIn: columnParent.Center
        height: 2
        color: "black"
        x: 15
    }

    Row{
        id: row2
        width: parent.width
        x: 15
        height: 30

        Text {
            id: textComponent2
            font.pixelSize: 20
            color: "black"
            font.bold: true
            anchors.leftMargin: 15
            anchors.verticalCenter: row2.verticalCenter
            y: 10
            text: "DRIFT"
        }

        Rectangle {
            width: 100
            height: 15
            color: "#444343"
            anchors.left: textComponent2.right
            anchors.verticalCenter: textComponent2.verticalCenter
            anchors.leftMargin: 20
            border.color: "black"
            border.width: 0.5
            TextInput {
                anchors.fill: parent
                color: "white"
            }
        }

    }

    Rectangle{
        width: columnParent.width
        anchors.centerIn: columnParent.Center
        height: 2
        color: "black"
        x: 15
    }

    Row{
        id: row3
        width: parent.width
        x: 15
        height: 30

        Text {
            id: textComponent3
            font.pixelSize: 20
            color: "black"
            font.bold: true
            anchors.leftMargin: 15
            anchors.verticalCenter: row3.verticalCenter
            y: 10
            text: "DEPTH"
        }

        Rectangle {
            width: 100
            height: 15
            color: "#444343"
            anchors.left: textComponent3.right
            anchors.verticalCenter: textComponent3.verticalCenter
            anchors.leftMargin: 10
            border.color: "black"
            border.width: 0.5
            TextInput {
                anchors.fill: parent
                color: "white"
            }
        }

    }

}



