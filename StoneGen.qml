import Qt 4.7

QtObject {
    property string currentSet

    function selectSet(s) {
        currentSet = s
    }

    function deal() {
        var img = "sets/futhark/Runic_letter_haglaz.svg"
        var c = Qt.createComponent("ImageStone.qml")
        var o = c.createObject(main)
        o.x = -100
        o.y = -100
        o.imageUrl = img
        return o

    }


}
