import Qt 4.7

ParallelAnimation {
    property Item tgt
    property int tx
    property int ty

    running: false

    PropertyAnimation {
        target: tgt
        property: "x"
        to: tx

    }

    PropertyAnimation {
        target: tgt
        property: "y"
        to: ty

    }









}

