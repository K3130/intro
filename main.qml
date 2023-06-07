import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    id: win
    width: 640
    height: 480
    visible: true
    title: qsTr("intro")





    Krect {
       id: k
    }



    Repeater {
        model: 100
        id: rain
        delegate: Rain {
        }
    }

    Rectangle {
        id: un1
        visible: false
        width: 160; height: 40
        color: "lightgray"
        border.color: "black"
        border.width: 2
        radius: 10
        x: 100; y: 350
        Text {
            text: "find a job..."
            anchors.centerIn: parent
            font.pixelSize: 25
            color: "black"
        }
        MouseArea {
             anchors.fill: parent
             onClicked: {
                 un2.border.color = "black"
                 un1.border.color = "red"
                 var i = 0;
                 while (i < 100) {
                     rain.itemAt(i).runAnim = true
                     i++;
                 }


             }
        }

    }

    Rectangle {
        id: un2
        visible: false
        width: 280; height: 40
        color: "lightgray"
        border.color: "black"
        border.width: 2
        radius: 10
        x: 320; y: 350
        Text {
            text: "wait a few more years."
            anchors.centerIn: parent
            font.pixelSize: 25
            color: "black"
        }
        MouseArea {
             anchors.fill: parent
             onClicked: {
                 un1.border.color = "black"
                 var i = 0;
                 while (i < 100) {
                     rain.itemAt(i).runAnim = false
                     i++;
                 }
                 un2.border.color = "red"
             }
        }
    }





    Rectangle {
        id: button
        width: 100
        height: 40
        color: "lightgray"
        radius: 10
        border.color: "black"
        border.width: 2
        anchors.centerIn: parent


        Text {
            text: "start."
            anchors.centerIn: parent
            font.pixelSize: 25
            color: "black"
        }

        MouseArea {
             anchors.fill: parent
             onClicked: {
                 k.runAnim = true
                 button.visible = false
                 un1.visible = true
                 un2.visible = true
             }
        }


    }


}
