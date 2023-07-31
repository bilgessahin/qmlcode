import QtQuick 2.0
import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.12

import QtQuick.Extras 1.4
import QtGraphicalEffects 1.0

import QtQuick.Shapes 1.12

Item {

    width: 120
    height: 90

    Rectangle{
        id: firstRec
        width: 120
        height: 90
        color: "gray"
        radius: 4
        border.width: 1
        border.color: "black"
    }
    Shape {
        width: 63
        height: 100
        anchors.left: firstRec.right

        ShapePath {
            strokeWidth: 1
            strokeColor: "black"
            fillColor: "gray"
            strokeStyle: ShapePath.SolidLine
            dashPattern: [1, 4]
            startX: 0
            startY: 0
            PathLine {
                x: 50
                y: 45
            }
            PathLine {
                x: 0
                y: 90
            }
            PathLine {
                x: 0
                y: 90
            }
        }
    }

    Rectangle {
        id: rectangle
        x: 119
        y: 0
        z: 1
        width: 1
        height: 90
        color: "gray"
    }

    Text {
        x: -10
        y: 96
        text: qsTr("NAV LIGHTS")
    }
}
