import QtQuick 2.0
import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.12
import QtQuick.Extras 1.4

Item {
    id: columnParent
    width: 370
    height: 125
    anchors.topMargin: 7

    Text {
        id: firstText
        text: qsTr("RUDDER")
        font.pointSize: 15
    }


    Slider {
        id: controlleft
        x: 0
        y: 20
        width: 188
        value: 0.0
        from: 0// Minimum değer
        to: 50  // Maksimum değer
        LayoutMirroring.enabled: true
        handle: Rectangle {
            id: controlleftRec
            x: controlleft.leftPadding + controlleft.visualPosition * (controlleft.availableWidth - width)
            y: controlleft.topPadding + controlleft.availableHeight / 2 - height / 2
            implicitWidth: 6
            implicitHeight: 25
            radius: 0
            color: controlleft.pressed ? "#787171" : "#787171"
            border.color: "#bdbebf"
        }
    }

    Slider {
        id: controlright
        x: 175
        y: 20
        width: 188
        value: 0.0
        from: 0
        to: 50  // Maksimum değer
        handle: Rectangle {
            id: controlrightRec
            x: controlright.leftPadding + controlright.visualPosition * (controlright.availableWidth - width)
            y: controlright.topPadding + controlright.availableHeight / 2 - height / 2
            implicitWidth: 6
            implicitHeight: 25
            radius: 0
            color: controlright.pressed ? "#787171" : "#787171"
            border.color: "#bdbebf"
        }
    }

    Gauge {
        id: gaugeRed
        x: 598 // Align with the right slider
        y: 23
        anchors.fill: controlleft
        anchors.top: controlleft.bottom
        width: controlleft.availableWidth + 5
        height: implicitHeight
        minimumValue: 0
        value: controlleft.value
        maximumValue: 50
        orientation: Qt.Horizontal
        rotation: -180
        LayoutMirroring.enabled: true
        style: GaugeStyle {
            valueBar: Rectangle {
                x: -45
                y: 5
                implicitWidth: 16
                color: "red"
                border.color: "black"
            }
            tickmarkLabel: Text {
                text: styleData.value === 0 ? "" : styleData.value
                font.pixelSize: 14
                color: /*styleData.value === 0 ? "black" : */"red"
                rotation: 180
                y: -43
            }
            minorTickmark: Rectangle {
                x: -3
                width: 8
                height: 1
                color: "red"
            }

            tickmark: Rectangle {
                visible: styleData.value === 0 ? false : true
                color: "red"
                width: 15
                height: 1
                x: -10
            }

        }
    }

    // Right Gauge
    Gauge {
        id: gaugeGreen
        x: 598 // Align with the right slider
        y: 23
        anchors.fill: controlright
        anchors.top: controlright.bottom
        width: controlright.availableWidth + 5
        height: implicitHeight
        minimumValue: 0
        value: controlright.value
        maximumValue: 50
        orientation: Qt.Horizontal
        style: GaugeStyle {
            valueBar: Rectangle {
                x: 65
                implicitWidth: 16
                color: "green"
                border.color: "black"
            }
            tickmarkLabel: Text {
                text: styleData.value
                font.pixelSize: 14
                color: styleData.value === 0 ? "black" : "green"
                x: styleData.value === 0 ? -2 : x
            }
            minorTickmark: Rectangle {
                width: 8
                height: 1
                color: "green" // Burada rengi değiştiriyoruz
            }

            tickmark: Rectangle {
                visible: styleData.value === 0 ? false : true
                color: "green"
                width: 15
                height: 1
            }
        }
    }
}

