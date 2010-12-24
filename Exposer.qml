import Qt 4.7

ParallelAnimation {
    id: self
    property Item tgt
    property int tx
    property int ty

    running: false

    PropertyAnimation {
        target: tgt || null
        property: "x"
        to:tgt ? tx - tgt.width/2 : 0

    }

    PropertyAnimation {
        target: tgt || null
        property: "y"
        to: tgt ? ty - tgt.height / 2 : 0

    }



}

