import QtQuick 2.0
import QtQuick.Layouts 1.12

RowLayout  {
    id: rowLayout
    anchors.top: parent.top
    width: parent.width
    height: 50
    spacing: 5


    Rectangle{
        anchors.fill: parent
        border.color: "black"
        border.width: 0
        color: "transparent"
    }

    Item {
        Layout.preferredWidth: parent.width * 0.03
        Layout.fillHeight: true
    }

    MyTextFile{
        text: "HDG"
        Layout.fillWidth: true
        Layout.alignment: Qt.AlignVCenter
    }

    MyTextFile{
        text: "COG"
        Layout.fillWidth: true
        Layout.alignment: Qt.AlignVCenter
    }

    MyTextFile{
        text: "MAG"
        Layout.fillWidth: true
    }

    MyTextFile{
        text: "SOG"
        Layout.fillWidth: true
    }

    MyTextFile{
        text: "LOG"
        Layout.fillWidth: true
    }
}
