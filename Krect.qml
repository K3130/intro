import QtQuick 2.0


Item {

    id: main
    property bool runAnim: false
    //rect
    Rectangle {
        width: 640; height:480
        color: "lightgray"

        Rectangle {
            anchors.fill: parent
            color: "#00000000"
            Canvas {
                anchors.fill: parent
                onPaint: {
                     var ctx = getContext("2d");
                     ctx.fillStyle = "white";
                     ctx.beginPath();
                     ctx.arc(width/2, height/2, 240, 0, 2*Math.PI);
                     ctx.fill();
                }
            }
        }

        Rectangle {
            id: vertRect
            y: 150; width: 20; height: 150
            visible: runAnim
            color: "black"
        }

        Rectangle {
            id: topRect
            x: 180; width: 20; height: 80
            color: "black"
            visible: runAnim
            rotation: 45
        }

        Rectangle {
            id: botRect
            x: 185; width: 20; height: 95
            color: "black"
            visible: runAnim
            rotation: -45
        }

        //text
        Text {
            id: numOne
            visible: runAnim
            text: "3"
            font.pixelSize: 200
            x: 230;
            //y: 100
        }

        Text {
            id: numTwo
            visible: runAnim
            text: "1"
            font.pixelSize: 200
            x: 305; y: 100
        }

        Text {
            id: numThree
            visible: runAnim
            text: "3"
            font.pixelSize: 200
            x: 390; y: 100
        }

        Text {
            id: numFoure
            visible: runAnim
            text: "0"
            font.pixelSize: 200
            x: 475; y: 100
        }


        //anim
        ParallelAnimation
        {
            id: an
            running: runAnim
            //loops: Animation.Infinite
            NumberAnimation  {
                target: vertRect
                property: "x"
                from: 0; to: 150
                duration: 1000
            }

            NumberAnimation {
                target: topRect
                property: "y"
                from: 0; to: 145
                duration: 1000
            }

            NumberAnimation {
                target: botRect
                property: "y"
                from: 400; to: 215
                duration: 1000
            }

            NumberAnimation {
                target: numOne
                property: "y"
                from: 400; to: 100
                duration: 1000
            }

            NumberAnimation {
                target: numTwo
                property: "y"
                from: -400; to: 100
                duration: 1000
            }

            NumberAnimation {
                target: numThree
                property: "y"
                from: 400; to: 100
                duration: 500
            }

            NumberAnimation {
                target: numFoure
                property: "x"
                from: 1000; to: 475
                duration: 1500
            }

        }




    }




}
