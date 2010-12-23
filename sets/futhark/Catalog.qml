import Qt 4.7

QtObject {

    property string stoneType: "ImageStone.qml"

    property variant fileList: [

        "Runic_letter_fehu.svg",
        "Runic_letter_uruz.svg"

    ]

    function getAll() {
        var res = []
        for (var i in fileList) {
            res.push( { 'img' : "sets/futhark/" + fileList[i] } )
        }

        return res
    }


}
