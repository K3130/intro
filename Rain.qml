import QtQuick 2.0

Item {
    property bool runAnim: false

    Rectangle {
        x: Math.floor(Math.random() * (150 - (-900) + 1) + (-900)); y: Math.floor(Math.random() * (150 - (-900) + 1) + (-900))
        Text {
            id: crazytxt
            text: qsTr("HR: What is your experience with commercial development?")
            color: "red"
            font.pixelSize: 25
            rotation: -45
            visible: runAnim

        }

        ParallelAnimation
        {
            id: an
            running: runAnim
            loops: Animation.Infinite
            NumberAnimation  {
                target: crazytxt
                property: "x"
                from: 700; to: -200
                duration: 6000
            }

            NumberAnimation  {
                target: crazytxt
                property: "y"
                from: 0; to: 700
                duration: 6000
            }

        }
    }


}
