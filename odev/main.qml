import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12


ApplicationWindow {
    width: 1400
    height: 900
    visible: true
    flags: Qt.Window | Qt.WindowMinimizeButtonHint | Qt.WindowMaximizeButtonHint | Qt.WindowCloseButtonHint

    Rectangle {
        width: parent.width
        height: parent.height
        border.color: "black"
        border.width: 2
        BorderImage {
            anchors.fill: parent
            source: "qrc:/images/arkaplan.png"
        }
    }

    Rectangle{
        width: parent.width
        height: 2
        color: "black"
        anchors.top: firstRow.bottom
    }

    FirstRow{
        id: firstRow
        x: 0
        y: 0
    }

    FirstColumn{
        id: firstColumn
        anchors.top: firstRow.bottom
    }

    Rectangle{
        anchors.top: firstRow.bottom
        anchors.left: firstColumn.right
        color: "black"
        width: 3
        height: firstColumn.height
    }

    SecondColumn{
        id: secondColumn
        anchors.top: firstRow.bottom
        anchors.left: firstColumn.right
    }

    Rectangle{
        anchors.top: firstRow.bottom
        anchors.leftMargin: 25
        anchors.topMargin: 0
        anchors.left: secondColumn.right
        color: "black"
        width: 3
        height: secondColumn.height
    }

    RudderColumn{
        id: rudderColumn
        anchors.top: firstRow.bottom
        anchors.left: secondColumn.right
        anchors.leftMargin: 30
    }

    Rectangle{
        id: thirdRec
        anchors.top: firstRow.bottom
        anchors.left: rudderColumn.right
        color: "black"
        width: 3
        height: rudderColumn.height
    }

    BowThrusterColumn{
        id: bowthruster1
        nameComponent: "BOW THRUSTER 1"
        anchors.left: thirdRec.left
        anchors.top: firstRow.bottom
        anchors.leftMargin: 20
    }

    BowThrusterColumn{
        nameComponent: "BOW THRUSTER 2"
        anchors.left: bowthruster1.left
        anchors.top: firstRow.bottom
        anchors.leftMargin: 200
    }

    Rectangle{
        anchors.top: firstColumn.bottom
        color: "black"
        width: parent.width
        height: 3
    }

    Rectangle{
        id: verticalRec
        anchors.top: firstColumn.bottom
        anchors.left: firstColumn.right
        anchors.leftMargin: 30
        color: "black"
        width: 3
        height: parent.height - rudderColumn.height
    }

    NavLightsComponent{
        id: navComponent
        x: 22
        anchors.top: firstColumn.bottom
        anchors.topMargin: 17
    }

    Rectangle{
        id: horizontalRec
        anchors.top: navComponent.bottom
        anchors.topMargin: 30
        width: 210
        height: 3
        color: "black"
    }


    Rectangle{
        id: halfCircGauge
        anchors.top: rudderColumn.bottom
        anchors.left: verticalRec.right
        anchors.topMargin: 20
        anchors.leftMargin: 10
        color: "white"
        width: 250
        height: 110
        border.color: "black"
        border.width: 2
        radius: 2
        MyHalfCircularGauge{
            anchors.fill: parent
            anchors.rightMargin: 0
            anchors.bottomMargin: -100
            anchors.leftMargin: 0
            anchors.topMargin: 75
        }

    }


    MyCircularGauge{
        id: myCircularGauge
        anchors.top: rudderColumn.bottom
        anchors.left: halfCircGauge.right
        anchors.topMargin: 10
    }

    Rectangle{
        id: halfCircGauge2
        anchors.top: rudderColumn.bottom
        anchors.left: myCircularGauge.right
        anchors.topMargin: 20
        anchors.leftMargin: 30
        color: "white"
        width: 250
        height: 110
        border.color: "black"
        border.width: 2
        radius: 2
        MyHalfCircularGauge{
            anchors.fill: parent
            anchors.rightMargin: 0
            anchors.bottomMargin: -100
            anchors.leftMargin: 0
            anchors.topMargin: 75
        }

    }

    MyTwoSideCircularGauge{
        id: firstCircularGauge
        anchors.top: halfCircGauge.bottom
        anchors.topMargin: 20
        anchors.leftMargin: 30
        anchors.left: verticalRec.left

        bottomText: "RPM"
        minVal: -1000
        maxVal: 1000
        stepSize: 200
        bottomRecVisible: true
        textX: 63
        textY: 142

    }

    MyTwoSideCircularGauge{
        id: secondCircularGauge
        anchors.top: halfCircGauge2.bottom
        anchors.topMargin: 20
        anchors.leftMargin: 30
        anchors.right: verticalRec2.left
        anchors.rightMargin: 30

        bottomText: "RPM"
        minVal: -1000
        maxVal: 1000
        stepSize: 200
        bottomRecVisible: true
        textX: 63
        textY: 142
    }

    MyTwoSideCircularGauge{
        anchors.top: firstCircularGauge.bottom
        anchors.topMargin: 50
        anchors.leftMargin: 30
        anchors.left: verticalRec.left

        bottomText: "RATE OF\n TURN"
        minVal: -250
        maxVal: 250
        stepSize: 50
        bottomRecVisible: false
        textX: 50
        textY: 135
    }

    MyTwoSideCircularGauge{
        anchors.top: secondCircularGauge.bottom
        anchors.topMargin: 50
        anchors.leftMargin: 30
        anchors.right: verticalRec2.left
        anchors.rightMargin: 30

        bottomText: "RATE OF\n TURN"
        minVal: -250
        maxVal: 250
        stepSize: 50
        bottomRecVisible: false
        textX: 50
        textY: 135
    }
    
    Rectangle{
        id: verticalRec2
        anchors.top: firstColumn.bottom
        anchors.left: halfCircGauge2.left
        anchors.leftMargin: 265
        color: "black"
        width: 3
        height: parent.height - rudderColumn.height
    }

    TextRow{
        id: textRow
        anchors.top: horizontalRec.bottom
        anchors.topMargin: 10
        x: 12
    }

    Rectangle{
        id: horizontalRec2
        anchors.top: textRow.bottom
        anchors.topMargin: 30
        width: 210
        height: 3
        color: "black"
    }


}
