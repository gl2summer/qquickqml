import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Particles 2.0

Window {
    id: root
    visible: true
    title: qsTr("Hello World")

    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight
    //width: 240; height: 240

    color: "#00000000" //"#001f1f1f"
    flags: Qt.Dialog | Qt.FramelessWindowHint | Qt.WindowSystemMenuHint

    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.AllButtons
        onReleased: {
            if(mouse.button === Qt.RightButton){
                root:close()
            }
        }
    }

    ParticleSystem {
        id: particleSystem
    }
    Emitter {
        id: emitter
        anchors.centerIn: parent
        //width: 200; height: 200
        anchors.fill: parent
        system: particleSystem
        emitRate: 10
        lifeSpan: 2000
        lifeSpanVariation: 100
        size: 32
        endSize: 512

        velocity: AngleDirection {
            angle: 0
            angleVariation: 15
            magnitude: 100
            magnitudeVariation: 50
        }
    }
    ImageParticle {
        //source: "./heart.png"
        source: "images/heart.png"
        system: particleSystem

        /*color: '#FFD700'
        colorVariation: 0.2*/
       /*
        rotation: 0
        rotationVariation: 45
        rotationVelocity: 15
        rotationVelocityVariation: 15
        entryEffect: ImageParticle.Scale*/
    }
}
