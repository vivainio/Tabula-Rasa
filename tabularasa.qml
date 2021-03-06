import Qt 4.7

import Qt.labs.folderlistmodel 1.0

Rectangle {
    width: 800
    height: 480
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
        if (!o)
            return
        exp.tgt = o
        exp.tx = tgtx
        exp.ty = tgty
        exp.start()
        sdesc.tgt = o
        sdesc.nameText = o.getDesc()

    }


    Exposer {
        id: exp        

    }

    Image {
        fillMode: Image.Tile
        anchors.fill: parent

        source: "pic/marble-table.jpg"
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            if (main.state == "") {
                deal(mouseX, mouseY)
            }
            //Qt.quit();
        }
    }


    Image {
        id: imgInsight
        anchors {
            right: parent.right
            bottom: parent.bottom
        }

        sourceSize {
            width: 64
            height: 64
        }

        source: "pic/scroll.png"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (main.state == "") {
                    console.log("insight mode")
                    main.state = "insight"
                } else {
                    main.state = ""
                }
            }

        }
    }

    StoneGen {
        id: sgen
        onStoneClicked: {
            console.log("stoneclicked ", stone)
            if (main.state == "insight") {
                sdesc.tgt = stone
                sdesc.nameText = stone.cfg['name']

            }
        }
    }

    StoneDesc {
        id: sdesc
        property Item tgt


        visible: tgt && main.state == "insight" ? true : false

        anchors.left: tgt ? tgt.right : undefined
        anchors.top:  tgt ? tgt.top : undefined
        width: 400

        onExtraInsightRequest: {
            main.state = "detail"
            console.log("Need extra for ", tgt, " - ",tgt.cfg)
            var url = tgt.cfg.descUrl
            insightDetail.url = url


        }

    }

    FlickableWebView {
        id: insightDetail
        //width: main.width
        width: main.width
        height: main.height
        x: 1000
        y: 0
        z: 100
        //y: -1000
        url: "http://en.wikipedia.org/wiki/Haglaz"

    }

    states: [
        State {
            name: "insight"

            //PropertyChanges {
            //    target: name

            //}
        },
        State {
            name: "detail"
            PropertyChanges {
                target: insightDetail
                x: 0

            }
            //PropertyChanges {
            //    target: main
            //    x: 1000
            //}


}

    ]


}
