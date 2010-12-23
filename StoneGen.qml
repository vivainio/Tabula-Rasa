import Qt 4.7

QtObject {
    property string currentSet

    property QtObject cat

    id: root
    function selectSet(s) {
        currentSet = s
        var c = Qt.createComponent(s + "/Catalog.qml")
        cat = c.createObject(root)
        for (var i in cat.fileList) {
            var v = cat.fileList[i]
            console.log("have " + v)
        }


    }


    function deal() {
        var img = "sets/futhark/Runic_letter_haglaz.svg"
        var c = Qt.createComponent(cat.stoneType)
        var o = c.createObject(main)
        o.x = -100
        o.y = -100
        o.imageUrl = img
        return o

    }


}
