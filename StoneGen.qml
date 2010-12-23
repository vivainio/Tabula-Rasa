import Qt 4.7

import "trengine.js" as E

QtObject {
    property string currentSet

    property QtObject cat
    //property variant deck

    id: root
    function selectSet(s) {
        currentSet = s
        var c = Qt.createComponent(s + "/Catalog.qml")
        cat = c.createObject(root)
        var de = cat.getAll()
        E.priv("StoneGen").deck = de
        console.log("all =", de)
        for (var i in cat.fileList) {
            var v = cat.fileList[i]
            console.log("have " + v)
        }


    }


    function deal() {
        var img = "sets/futhark/Runic_letter_haglaz.svg"
        var c = Qt.createComponent(cat.stoneType)
        var o = c.createObject(main)
        var deck = E.priv("StoneGen").deck
        console.log("deck is", deck)
        var card = deck.pop()
        console.log("card ",card)
        o.configure(card)
        o.x = -100
        o.y = -100
        //o.imageUrl = img
        return o
    }


}
