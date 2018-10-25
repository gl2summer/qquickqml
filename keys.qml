import QtQuick 2.0

Rectangle {
    width: 400; height: 400
    GreenSquare {
        id: square
        x: 100; y: 100
        radius: 4
    }
    focus: true
    Keys.onLeftPressed: square.x -= 8
    Keys.onRightPressed: square.x += 8
    Keys.onUpPressed: square.y -= 8
    Keys.onDownPressed: square.y += 8
    Keys.onPressed: {
        switch(event.key) {
            case Qt.Key_Plus:
            square.scale += 0.2
            break;
            case Qt.Key_Minus:
            square.scale -= 0.2
            break;
        }
    }
}
