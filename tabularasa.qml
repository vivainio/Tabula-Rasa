import Qt 4.7

import Qt.labs.folderlistmodel 1.0

Rectangle {
    width: 360
    height: 360
    id: main
    function deal() {        
        var o = sgen.deal()
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

    StoneGen {
        id: sgen
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            deal()
            //Qt.quit();
        }
    }
}
