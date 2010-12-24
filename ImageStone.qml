import Qt 4.7

BaseStone {
    property alias imageUrl : img.source

    width: bg.width
    height: bg.height

    Image {
        id: bg
        source: "pic/parchment-bg.png"
    }
    Image {
        id: img
        anchors.centerIn: parent
    }



    function configure(cfg) {
        // imagestone has img url in "img"
        img.source = cfg['img']

    }

    function getDesc() {
        return img.source

    }
}
