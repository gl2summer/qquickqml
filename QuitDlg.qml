import QtQuick 2.0
import QtQuick.Dialogs 1.1
import QtQuick.Window 2.2

MessageDialog {
    id:msgBox
    standardButtons: StandardButton.Yes | StandardButton.No
    modality: Qt.ApplicationModal
    title: "Quit"
    text: "Realy quit?"

    onYes: {
        Qt.quit()
    }
}
