import Qt 4.7

Rectangle {
    width: 100
    height: 62
    property alias text : tf.text
    property int tgtx
    property int tgty

    color: "yellow"
    id: rr

    Text {
        id: tf
        anchors.centerIn: parent
    }
    MouseArea {
        anchors.fill: parent
        drag.target: rr
    }
    states: [
        State {
            name: "shown"
            PropertyChanges {
                target: rr
                x: txtx
                y: tgty
            }
        }
    ]

}
