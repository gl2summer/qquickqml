import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    id: root
    visible: true
    width: 800
    height: 800
    title: qsTr("Hello World")

    //color: "#00000000"
    //modality: Qt.WindowModal;
    //flags: Qt.Dialog | Qt.FramelessWindowHint | Qt.WindowSystemMenuHint

    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.AllButtons
        QuitDlg {
            id:msgBox
        }
        onReleased: {
            if(mouse.button === Qt.RightButton){
                console.log('quit')
                //root:close()
                msgBox.open()
            }
        }
    }

    Image {
        id:pointDown
        visible:true
        anchors.top: parent.top
        source: "images/point_down.png"
    }
    Image {
        id:flower
        visible:true
        anchors.top: pointDown.top
        anchors.left: pointDown.right
        source: "images/flower.png"
    }
    Image {
        id:pinwheel
        visible:true
        anchors.centerIn: parent
        source: "images/pinwheel.png"

        RotationAnimation on rotation {
            id: ro
            from: 0
            to: 360
            duration: 3600
            loops: Animation.Infinite
        }
        MouseArea {
            anchors.fill: parent
            acceptedButtons: Qt.AllButtons
            onClicked: {
                if(!ro.running)
                {
                    ro.start()
                }
                else
                {
                    if(ro.paused)
                        ro.resume()
                    else
                        ro.pause()
                }
            }
        }
    }
}
