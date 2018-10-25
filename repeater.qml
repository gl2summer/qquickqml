import QtQuick 2.0

Rectangle {
    id: root
    width: 256
    height: 256
    property variant colorArray: ["red", "blue", "green"]

    Flow {
        anchors.fill: parent
        anchors.margins: 4
        spacing: 4
        Repeater {
            model: 16
            Rectangle {
                width: 56; height: 56
                color: root.colorArray[(Math.floor(Math.random()*100))%3]
                border.color: Qt.lighter(color)
                Text {
                    anchors.centerIn: parent
                    color: "#f0f0f0"
                    font.pixelSize: 16
                    font.bold: true
                    text: "Cell " + index
                }
            }
        }
    }
}
