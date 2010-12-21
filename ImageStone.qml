import Qt 4.7

BaseStone {
    property alias imageUrl : img.source
    width: img.width + 20
    height: img.height + 10
    Image {
        id: img
        anchors.centerIn: parent
    }
}
