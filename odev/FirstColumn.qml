import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

Column{
    id: columnFirst
    spacing: 5
    width: 180
    height: 125

    Row{
        width: parent.width
        spacing: 5
        x: 15
        y: 0
        height: 30

        Text {
            text: "SHIP"
            font.pixelSize: 20
            color: "black"
            font.bold: true
            anchors.leftMargin: 15
            y: 10
            x: 50
        }

        Text {
            text: getFormattedDate()
            font.pixelSize: 16
            color: "white"
            font.bold: true
            y: 13
        }
    }

    Rectangle{
        width: columnFirst.width - 30
        anchors.centerIn: columnFirst.Center
        height: 2
        color: "black"
        x: 15
    }


    Row{
        width: parent.width
        spacing: 18
        height: 30
        x: 15
        y: 0

        Image {
            id: clock
            source: "qrc:/images/clock2.png"
            width: 30
            height: 30
        }

        Text {
            text: getCurrentTime()
            font.pixelSize: 16
            color: "white"
            font.bold: true
            anchors.verticalCenter: parent.verticalCenter

        }
    }

    Rectangle{
        width: columnFirst.width - 30
        anchors.centerIn: columnFirst.Center
        height: 2
        color: "black"
        x: 15
    }

    Row{
        width: parent.width
        spacing: 18
        x: 15
        height: 30

        Text {
            text: "SIM"
            font.pixelSize: 20
            color: "black"
            font.bold: true/*
                anchors.leftMargin: 15*/
        }

        Text {
            text: "00:00:00"
            font.pixelSize: 16
            color: "white"
            font.bold: true
            anchors.verticalCenter: parent.verticalCenter
        }
    }





    function getFormattedDate() {
        var date = new Date();
        var day = date.getDate().toString().padStart(2, "0");
        var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
        var month = monthNames[date.getMonth()];
        var year = date.getFullYear();

        return day + " " + month + " " + year;
    }

    function getCurrentTime() {
        var date = new Date();
        var hours = date.getHours().toString().padStart(2, "0");
        var minutes = date.getMinutes().toString().padStart(2, "0");
        var seconds = date.getSeconds().toString().padStart(2, "0");
        return hours + ":" + minutes + ":" + seconds;
    }




}
//}


