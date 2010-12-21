import Qt 4.7

Item {
    id: rr
    width: 60
    height: 40
    MouseArea {
        anchors.fill: parent
        drag.target: rr
    }

}
