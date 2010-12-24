import Qt 4.7

Item {
    id : rr
    property alias nameText: tName.text
    width: 200
    height: 100
    Text {
        anchors.left: rr.left
        anchors.top: rr.top
        anchors.topMargin: 5
        anchors.leftMargin: 5
        id: tName
        text: "Name"
    }

}
