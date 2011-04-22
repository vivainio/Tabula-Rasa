import Qt 4.7

Item {
    id : rr
    property alias nameText: tName.text

    signal extraInsightRequest()

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

    Image {
        id: image1
        sourceSize.width: 100
        anchors.left: tName.left
        anchors.leftMargin: 0
        anchors.top: tName.bottom
        anchors.topMargin: 1
        source: "pic/scroll.png"
        MouseArea {
            anchors.fill: parent
            onClicked: rr.extraInsightRequest()
        }
    }

}
