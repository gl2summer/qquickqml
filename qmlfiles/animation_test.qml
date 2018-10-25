import QtQuick 2.11

Rectangle {

    width: 480+48
    height: 480+48

    Rectangle {
        id:rect
        width: 48
        height: 48
        color: "blue"

        ParallelAnimation {
            id: panimation
            NumberAnimation {
                target: rect
                property: "x"
                from: 0
                to: 480
                duration: 2000
                easing.type: Easing.InOutQuad
            }
            NumberAnimation {
                target: rect
                property: "y"
                from: 0
                to: 480
                duration: 2000
                easing.type: Easing.OutInBack
            }
            running: true
            loops: Animation.Infinite
        }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: panimation.restart()
    }
}
