import QtQuick 2.0
import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.12

import QtQuick.Extras 1.4
import QtGraphicalEffects 1.0

import QtQuick.Shapes 1.12

Item {

    width: 200
    height: 30

    Rectangle {
        id: firstRec
        width: 200
        height: 50
        color: "gray"
        radius: 4
        border.width: 1
        border.color: "black"

        Text {
            x: 16
            y: 8
            text: qsTr("ANCHOR")
        }

        Text {
            x: 94
            y: 17
            text: qsTr("Port")
        }

        Text {
            x: 152
            y: 17
            text: qsTr("Stbd")
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.3300000429153442}
}
##^##*/
