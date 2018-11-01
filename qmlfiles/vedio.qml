import QtQuick 2.0
import QtMultimedia 5.0

Item {
  width: 1024
  height: 600
  VideoOutput {
    anchors.fill: parent
    source: camera
  }
  Camera {
    id: camera
  }
}