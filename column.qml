import QtQuick 2.0

Rectangle {
    id: root
    width: 120
    height: 240
    color: "black"
    anchors.fill: parent

    Column {
        id: column
        anchors.centerIn: parent
        anchors.fill: parent
        anchors.margins: 4
        spacing: 4
        RedSquare{width: parent.width/2}
        GreenSquare{width: parent.width}
        BlueSquare{width: parent.width/2}
    }
}
