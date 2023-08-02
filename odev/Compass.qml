import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.12

import QtQuick 2.0
import QtQuick.Window 2.12
import QtQuick.Extras 1.4
import QtGraphicalEffects 1.0

import QtQuick.Shapes 1.12
import QtSensors 5.12


Rectangle {
    width: 300
    height: 300
    color: "transparent"

    MyGradient{
        anchors.centerIn: parent
    }

    Rectangle {
        id: firstRec
        width: 300
        height: 300
        color: "white"
        radius: width / 2
        anchors.centerIn: parent
    }

    CircularGauge {
        anchors.fill: firstRec
        minimumValue : 0
        maximumValue : 360
        z: 1
        value: myCompassObject.angle()

        style: CircularGaugeStyle
        {
            minimumValueAngle : 0
            maximumValueAngle  : 360
            tickmarkStepSize : 10
            tickmarkLabel: null

            tickmark: Text {
                y: 10
                text : styleData.value
                visible: styleData.value === 0 ? false : true
                color: "black"
                font.pixelSize: 10
                Rectangle {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.top
                    anchors.bottomMargin: 1
                    implicitWidth: outerRadius * 0.02
                    antialiasing: true
                    implicitHeight: outerRadius * 0.06
                    color: "black"
                }
            }

            minorTickmark: Rectangle {
                visible: true
                implicitWidth: outerRadius * 0.01
                antialiasing: true
                implicitHeight: outerRadius * 0.03
                color: "black"
            }

            needle: Rectangle{
                y: 50
                implicitWidth: outerRadius * 0.03
                implicitHeight: outerRadius * 0.9
                antialiasing: true
                color: "transparent"
                Rectangle{
                    id: firstRecNeedle
                    y: outerRadius * 0.15
                    implicitWidth: outerRadius * 0.03
                    implicitHeight: outerRadius * 0.9
                    antialiasing: true
                    color: "transparent"
                    Shape {
                        width: 200
                        height: 20
                        rotation: -90
                        x: -97
                        y: -50
                        ShapePath {
                            id: firstTriangle
                            strokeWidth: 1
                            strokeColor: "red"

                            fillColor: "red"
                            startX: 0
                            startY: 0
                            PathLine {
                                x: 100
                                y: 10
                            }
                            PathLine {
                                x: 0
                                y: 20
                            }
                            PathLine {
                                x: 0
                                y: 20
                            }
                        }
                    }
                }

                Rectangle{
                    y: outerRadius * 0.15
                    implicitWidth: outerRadius * 0.03
                    implicitHeight: outerRadius * 0.9
                    antialiasing: true
                    anchors.top: firstRecNeedle.bottom
                    color: "transparent"
                    Shape {
                        width: 200
                        height: 20
                        rotation: -270
                        x: -97
                        y: 35
                        ShapePath {
                            strokeWidth: 1
                            strokeColor: "black"

                            fillColor: "white"
                            startX: 0
                            startY: 0
                            PathLine {
                                x: 100
                                y: 10
                            }
                            PathLine {
                                x: 0
                                y: 20
                            }
                            PathLine {
                                x: 0
                                y: 20
                            }
                        }
                    }
                }
            }
            foreground: Item {
                Rectangle {
                    width: 30
                    height: width
                    radius: width / 2
                    color: "yellow"
                    anchors.centerIn: parent
                    z: 1
                }
            }
        }
    }


    Item {
        id: ilk
        anchors.centerIn: parent
        width: 280
        height: 280
        z: 1
        CircularGauge {
            width: 280
            height: 280
            minimumValue: 0
            maximumValue: 360
            z: 1
            value: 270
            style: CircularGaugeStyle {
                minimumValueAngle: 360
                maximumValueAngle: 0
                tickmarkStepSize: 10
                tickmarkLabel: null

                tickmark: Text {
                    y: 10
                    text: styleData.value
                    visible: styleData.value === 360 ? false : true
                    color: "black"
                    font.pixelSize: 8
                }

                minorTickmark: Rectangle {
                    implicitWidth: outerRadius * 0.01
                    antialiasing: true
                    implicitHeight: outerRadius * 0.03
                    color: "black"
                    visible: false
                }

                needle: Rectangle {
                    y: 50
                    implicitWidth: outerRadius * 0.03
                    implicitHeight: outerRadius * 0.9
                    antialiasing: true
                    color: "transparent"
                    Rectangle {
                        id: firstRecNeedle2
                        y: outerRadius * 0.15
                        implicitWidth: outerRadius * 0.03
                        implicitHeight: outerRadius * 0.9
                        antialiasing: true
                        color: "transparent"
                        Shape {
                            width: 200
                            height: 20
                            rotation: -90
                            x: -100
                            y: -60
                            ShapePath {
                                strokeWidth: 1
                                strokeColor: "transparent"

                                fillGradient: LinearGradient {
                                    x1: 0; y1: 20
                                    x2: 0; y2: 10
                                    GradientStop { position: 0; color: "#5d7891" }
                                    GradientStop { position: 0.25; color: "#5d7891" }
                                    GradientStop { position: 0.5; color: "#5d7891" }
                                    GradientStop { position: 0.75; color: "#5d7891" }
                                    GradientStop { position: 1; color: "#0c0c0b" }
                                }
                                startX: 0
                                startY: 0
                                PathLine {
                                    x: 100
                                    y: 10
                                }
                                PathLine {
                                    x: 0
                                    y: 20
                                }
                                PathLine {
                                    x: 0
                                    y: 20
                                }
                            }
                        }
                    }

                    Rectangle {
                        y: outerRadius * 0.15
                        implicitWidth: outerRadius * 0.03
                        implicitHeight: outerRadius * 0.9
                        antialiasing: true
                        anchors.top: firstRecNeedle2.bottom
                        color: "transparent"
                        Shape {
                            width: 200
                            height: 20
                            rotation: -270
                            x: -100
                            y: 15
                            ShapePath {
                                strokeWidth: 1
                                strokeColor: "black"
                                fillGradient: LinearGradient {
                                    x1: 0; y1: 20
                                    x2: 0; y2: 10
                                    GradientStop { position: 0; color: "#5d7891" }
                                    GradientStop { position: 0.25; color: "#5d7891" }
                                    GradientStop { position: 0.5; color: "#5d7891" }
                                    GradientStop { position: 0.75; color: "#5d7891" }
                                    GradientStop { position: 1; color: "#0c0c0b" }
                                }
                                startX: 0
                                startY: 0
                                PathLine {
                                    x: 100
                                    y: 10
                                }
                                PathLine {
                                    x: 0
                                    y: 20
                                }
                                PathLine {
                                    x: 0
                                    y: 20
                                }
                            }
                        }
                    }
                }
                foreground: Item {
                    Rectangle {
                        width: 30
                        height: width
                        radius: width / 2
                        color: "yellow"
                        anchors.centerIn: parent
                        z: 1
                    }
                }
            }
        }
    }

    Image {
        id: name
        source: "qrc:/images/compass-removebg-preview.png"
        anchors.centerIn: parent
        width: 220
        height: 220
        rotation: -1
    }
}
