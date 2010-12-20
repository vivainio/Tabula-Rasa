import Qt 4.7

Rectangle {
    width: 360
    height: 360
    id: main
    function deal() {
        var c
        c = Qt.createComponent("LabelStone.qml")
        var o = c.createObject(main)
        o.x = -100
        o.y = -100
        o.text = "hello"
        var tgtx  = Math.random() * main.width
        var tgty = Math.random() * main.height
        exp.tgt = o
        exp.tx = tgtx
        exp.ty = tgty
        exp.start()


    }

    Exposer {
        id: exp

    }

    Text {
        anchors.centerIn: parent
        text: "Hello World"
    }
    LabelStone {
        anchors.centerIn: parent
        text : "mstone"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            deal()
            //Qt.quit();
        }
    }
}
