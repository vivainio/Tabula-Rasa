import Qt 4.7

Item {
    id: rr

    property variant cfg

    signal clicked()

    width: 60
    height: 40
    MouseArea {
        anchors.fill: parent
        drag.target: rr
        onClicked: {
            rr.clicked()
        }
    }
}
