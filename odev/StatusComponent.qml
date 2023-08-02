import QtQuick 2.0
import QtQuick.Extras 1.4

Item {
    property var button1Click: false
    property var button2Click: false

    StatusIndicator{
        id: firstIndicator
        color: "green"
        active: true
        width: 20
        height: 20
        x: -15
    }
    StatusIndicator{
        id: secondIndicator
        anchors.left: firstIndicator.right
        anchors.leftMargin: 90
        color: "green"
        active: true
        width: 20
        height: 20
    }

    MyButton{
        id: firstButton
        anchors.top: firstIndicator.bottom
        itemWidth: 85
        buttonTextInfo: "Pump 1"
        buttonColor: "#f7a216"
        x: -50
        MouseArea{
            anchors.fill: parent
            onClicked: {
                if(button1Click){
                    firstIndicator.active = true
                    button1Click = false
                }else{
                    firstIndicator.active = false
                    button1Click = true
                }
            }
        }
    }

    MyButton{
        anchors.top: secondIndicator.bottom
        anchors.leftMargin: 30
        anchors.left: firstButton.right
        itemWidth: 85
        buttonTextInfo: "Pump 2"
        buttonColor: "#f7a216"
        MouseArea{
            anchors.fill: parent
            onClicked: {
                if(button2Click){
                    secondIndicator.active = true
                    button2Click = false
                }else{
                    secondIndicator.active = false
                    button2Click = true
                }
            }
        }
    }
}
