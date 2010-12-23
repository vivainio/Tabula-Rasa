import Qt 4.7

import Qt.labs.folderlistmodel 1.0

Rectangle {
    width: 360
    height: 360
    id: main

    function startup() {
        sgen.selectSet("sets/futhark")

    }
    Component.onCompleted: {
        startup()

    }


    function deal(tgtx, tgty) {
        var o = sgen.deal()
        //var tgtx  = Math.random() * main.width
        //var tgty = Math.random() * main.height
        exp.tgt = o
        exp.tx = tgtx
        exp.ty = tgty
        exp.start()

    }

    Exposer {
        id: exp

    }

    Image {
        fillMode: Image.Tile
        anchors.fill: parent

        source: "pic/marble-table.jpg"
    }

    StoneGen {
        id: sgen
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            deal(mouseX- 30 , mouseY- 15)
            //Qt.quit();
        }
    }
}
