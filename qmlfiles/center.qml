import QtQuick 2.0

Rectangle {
    Rectangle {
        id:rect1
        width: 48
        height: 48
        color: "blue"
    }

    Rectangle {
        id: rect2
        width: 48
        height: 48
        color: "red"

        anchors.verticalCenter : rect1.anchors.verticalCenter
        anchors.top: rect1.bottom
    }
}
