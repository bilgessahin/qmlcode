import QtQuick 2.0
import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.12

import QtQuick.Window 2.12
import QtQuick.Extras 1.4
import QtGraphicalEffects 1.0

import QtQuick.Shapes 1.12

Item {
    width: 300
    height: 300

    CircularGauge {
        anchors.centerIn: parent
        minimumValue : -100
        maximumValue : 100
        value:0
        style: CircularGaugeStyle
        {
            minimumValueAngle : -45
            maximumValueAngle  : 45

            needle:Rectangle {
                id:gaugeNeedle
                y: -40
                implicitWidth: outerRadius * 0.03
                implicitHeight: outerRadius * 0.5
                antialiasing: true
                color: "#444343"
                Text {
                    text: qsTr("PITCH")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.horizontalCenterOffset: 3
                    color: "black"
                }
            }
            foreground: Item
            {
            }

            tickmarkStepSize : 20

            minorTickmark: Rectangle {
                visible: false
            }

            tickmarkLabel: null

            tickmark: Text {
                text : (styleData.value < 0 ? -1 * styleData.value : styleData.value)
                color: styleData.value ===0 ? "black" : styleData.value < 0 ? "red" : "green"
                font.pixelSize: 10
                Rectangle {
                    id: firstREc
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.bottom
                    implicitWidth: outerRadius * 0.02
                    antialiasing: true
                    implicitHeight: outerRadius * 0.06
                    color: styleData.value ===0 ? "black" : styleData.value < 0 ? "red" : "green"
                }
            }
        }
    }

    Rectangle{
        width: 60
        height: 30
        color: "white"
        x: 5
        y: 0
        z: 1
        Text {
            text: qsTr("ASTERN")
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            color: "red"
        }
    }

    Rectangle{
        width: 60
        height: 30
        color: "white"
        x: 185
        y: 0
        z: 1
        Text {
            text: qsTr("AHEAD")
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            color: "green"
        }
    }


    Rectangle {
        width: parent.width
        height: parent.height
        color: "transparent"

        Canvas {
            anchors.centerIn: parent
            width: 220
            height: 200
            rotation: 270
            onPaint: {
                var ctx = getContext("2d");
                ctx.clearRect(0, 0, width, height);


                var startAngle = -Math.PI / 3;
                var endAngle = Math.PI / 3;
                var radius = width / 2;

                ctx.beginPath();
                ctx.arc(width / 2, height / 2, radius, startAngle, endAngle, false);
                ctx.lineWidth = 2;
                ctx.strokeStyle = "black";
                ctx.stroke();
            }
        }
    }
}
