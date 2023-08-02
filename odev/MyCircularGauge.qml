import QtQuick 2.0
import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Styles 1.4

import QtQuick.Extras 1.4
import QtGraphicalEffects 1.0

import QtQuick.Shapes 1.12


Rectangle {
    color: "transparent"
    width: 300
    height: 200

    Text {
        id: firstText
        x: 55
        y: 0
        text: qsTr("WIND")
        font.bold: true
        font.pixelSize: 15
    }
    MyButton{
        itemWidth: 150
        id: firstButton
        anchors.top: firstText.bottom
        buttonTextInfo: "True"
        buttonColor: "#dd4001"
    }
    MyButton{
        itemWidth: 150
        anchors.top: firstButton.bottom
        buttonTextInfo: "Relative"
        buttonColor: "#ff8633"
    }

    Rectangle {
        id: firstRec
        anchors.left: firstButton.right
        width: 150
        height: 150
        color: "black"
        radius: width / 2


        Rectangle {
            id: secondRec
            anchors.centerIn: parent
            width: 90
            height: 90
            color: "black"
            radius: width / 2
            border.color: "white"
        }

        Rectangle{
            x: 45
            y: 90
            color: "white"
            width: 60
            height: 16
        }
    }

    CircularGauge {
        anchors.fill: firstRec
        minimumValue : 0
        maximumValue : 359
        style: CircularGaugeStyle
        {
            minimumValueAngle : 0
            maximumValueAngle  : 360
            tickmarkStepSize : 30

            tickmarkLabel:Text
            {
                color:"green"
                text : styleData.value//(styleData.value % 30 === 0 ? styleData.value : "")
            }

            minorTickmark: Rectangle {
                visible: true
                implicitWidth: outerRadius * 0.01
                antialiasing: true
                implicitHeight: outerRadius * 0.03
                color: "green"
            }

            tickmark: Rectangle {
                implicitWidth: outerRadius * 0.02
                antialiasing: true
                implicitHeight: outerRadius * 0.06
                color: "green"
            }

            needle: Rectangle {
                id:gaugeNeedle
                y: outerRadius * 0.15
                implicitWidth: outerRadius * 0.03
                implicitHeight: outerRadius * 0.9
                antialiasing: true
                color: "yellow"
            }
            foreground: Item {
                Rectangle {
                    width: 15
                    height: width
                    radius: width / 2
                    color: "gray"
                    anchors.centerIn: parent
                }
            }
        }
    }

    Rectangle {
        id: rectangle
        x: 60
        y: 166
        width: 65
        height: 34
        color: "#78EC2D"
        border.width: 1
        border.color: "#99A099"
    }
    Text {
        id: buttonText
        text: "MAG"
        anchors.verticalCenter: rectangle.verticalCenter
        anchors.horizontalCenter: rectangle.horizontalCenter
        font.bold: true
    }



    Rectangle {
        id: rectangle1
        x: 218
        y: 166
        width: 65
        height: 34
        color: "#69A047"
        border.width: 1
        border.color: "#99A099"
    }
    Text {
        text: "GYRO"
        anchors.verticalCenter: rectangle1.verticalCenter
        anchors.horizontalCenter: rectangle1.horizontalCenter
        font.bold: true
    }


    Rectangle {
        id: rectangle2
        x: 152
        y: 169
        width: 35
        height: 26
        color: "#444343"
        border.width: 1
        border.color: "black"


    }
}
