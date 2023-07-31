import QtQuick 2.0
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

Item {
    ProgressBar {
        id: control
        anchors.centerIn: parent
        value: controlright.value
        height: 20
        clip: true
        from: 0
        to: 50  // Maksimum değer
        background: Rectangle {
            implicitWidth: 200
            implicitHeight: 6
            border.color: "#999999"
            radius: 5
        }
        contentItem: Item {
            implicitWidth: 200
            implicitHeight: 4

            Rectangle {
                id: bar
                width: control.visualPosition * parent.width
                height: parent.height
                radius: 5
            }

            LinearGradient {
                anchors.fill: bar
                start: Qt.point(0, 0)
                end: Qt.point(bar.width, 0)
                source: bar
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "#17a81a" }
                    GradientStop { id: grad; position: 0.5; color: Qt.lighter("#17a81a", 2) }
                    GradientStop { position: 1.0; color: "#17a81a" }
                }

            }
            LinearGradient {
                anchors.fill: bar
                start: Qt.point(0, 0)
                end: Qt.point(0, bar.height)
                source: bar
                gradient: Gradient {
                    GradientStop { position: 0.0; color: Qt.rgba(0,0,0,0) }
                    GradientStop { position: 0.5; color: Qt.rgba(1,1,1,0.3) }
                    GradientStop { position: 1.0; color: Qt.rgba(0,0,0,0.05) }
                }
            }
        }

    }
}
