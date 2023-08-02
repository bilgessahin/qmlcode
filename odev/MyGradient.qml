import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    width: 320
    height: 320
    radius: width / 2
    Rectangle {
        id: rec1
        width: 320//440
        height: 320
        radius: width / 2
        anchors.centerIn: parent
        border.color: "black"
        border.width: 1
        layer.enabled: true
        layer.effect:
            ConicalGradient{
            anchors.fill: parent
            gradient: Gradient {
                GradientStop{position: 0.0; color: "white"}
                GradientStop{position: 0.25; color: "#696969"}
                GradientStop{position: 0.5; color: "white"}
                GradientStop{position: 0.75; color: "#696969"}
                GradientStop{position: 1.0; color: "white"}
            }
        }
    }

    Rectangle {
        id: rec2
        width: 300//420
        height: 300
        radius: width / 2
        anchors.centerIn: parent
        layer.enabled: true
        border.color: "#696969"
        border.width: 1
        layer.effect:ConicalGradient{
            anchors.fill: parent
            gradient: Gradient {
                GradientStop{position: 0.0; color: "#696969"}
                GradientStop{position: 0.25; color: "white"}
                GradientStop{position: 0.5; color: "#696969"}
                GradientStop{position: 0.75; color: "white"}
                GradientStop{position: 1.0; color: "#696969"}
            }
        }
    }

}
