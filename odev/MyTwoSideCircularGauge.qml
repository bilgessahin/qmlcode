import QtQuick 2.0
import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Styles 1.4

import QtQuick.Extras 1.4
import QtGraphicalEffects 1.0

import QtQuick.Shapes 1.12


Rectangle {
    color: "transparent"
    width: 200
    height: 200

    property var bottomText: circularText.text
    property var minVal: circularGaugeComponent.minimumValue
    property var maxVal: circularGaugeComponent.maximumValue
    property var stepSize: 0
    property var bottomRecVisible: bottomRec.visible
    property var textX: circularText.x
    property var textY: circularText.y

    Connections {
        target: velocityController
        onVelocityChanged: {
            circularGaugeComponent.value = velocityController.velocity()
        }
    }

    Rectangle {
        id: firstRec
        width: 200
        height: 200
        color: "black"
        radius: width / 2


        Rectangle {
            id: bottomRec
            x: 58
            y: 120
            color: "black"
            width: 84
            height: 30
            border.color: "green"
            border.width: 2
            visible: bottomRecVisible

            Text {
                text: qsTr("PROPELLER")
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                color: "green"
                font.pointSize: 10
            }
        }
    }

    CircularGauge {
        id: circularGaugeComponent
        anchors.verticalCenter: firstRec.verticalCenter
        anchors.horizontalCenter: firstRec.horizontalCenter
        minimumValue: minVal
        maximumValue: maxVal
        value: velocityController.velocity()

        width: 150
        height: 150
        style: CircularGaugeStyle
        {
            tickmarkStepSize : stepSize
            needle: Rectangle {
                y: outerRadius * 0.15
                implicitWidth: outerRadius * 0.03
                implicitHeight: outerRadius * 0.9
                antialiasing: true
                color: "#e5e5e5"
            }
            foreground: Item {
                Rectangle {
                    width: outerRadius * 0.2
                    height: width
                    radius: width / 2
                    color: "gray"
                    anchors.centerIn: parent
                }
            }

            minorTickmark: Rectangle {
                visible: true
                implicitWidth: outerRadius * 0.01
                antialiasing: true
                implicitHeight: outerRadius * 0.03
                color: styleData.value === 0 ? "white" : styleData.value < 0 ? "red" : "green"
            }

            tickmarkLabel: null

            tickmark: Text {
                y: -15
                text : (styleData.value < 0 ? -1 * styleData.value : styleData.value)
                color: styleData.value ===0 ? "white" : styleData.value < 0 ? "red" : "green"
                font.pixelSize: 12
                Rectangle {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.bottom
                    implicitWidth: outerRadius * 0.02
                    antialiasing: true
                    implicitHeight: outerRadius * 0.06
                    color: styleData.value === 0 ? "white" : styleData.value < 0 ? "red" : "green"
                }
            }
        }
        Text {
            id: circularText
            x: textX//63
            y: textY//142
            text: bottomText
            font.pixelSize: 14
            color: "white"
        }
    }

    Rectangle {
        x: 83
        y: 206
        width: 35
        height: 26
        color: "#444343"
        border.width: 1
        border.color: "black"
        MouseArea{
            anchors.fill: parent
            onClicked: velocityController.setVelocity(200)
        }
    }
}
