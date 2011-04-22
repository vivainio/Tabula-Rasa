import Qt 4.7

QtObject {

    property string stoneType: "ImageStone.qml"

    property variant fileList: ['Runic_letter_algiz.svg', 'Runic_letter_ansuz.svg',
'Runic_letter_berkanan.svg', 'Runic_letter_dagaz.svg',
'Runic_letter_ehwaz.svg', 'Runic_letter_fehu.svg',
'Runic_letter_gebo.svg', 'Runic_letter_haglaz.svg',
'Runic_letter_ingwaz.svg', 'Runic_letter_isaz.svg',
'Runic_letter_iwaz.svg', 'Runic_letter_jeran.svg',
'Runic_letter_kauna.svg', 'Runic_letter_laukaz.svg',
'Runic_letter_mannaz.svg', 'Runic_letter_naudiz.svg',
'Runic_letter_othalan.svg', 'Runic_letter_pertho.svg',
'Runic_letter_raido.svg', 'Runic_letter_sowilo.svg',
'Runic_letter_thurisaz.svg', 'Runic_letter_tiwaz.svg',
'Runic_letter_uruz.svg', 'Runic_letter_wunjo.svg']

    property variant descMap: [12]
                                 // 'algiz' : "http://en.wikipedia.org/wiki/Algiz"
                              //}


    function getAll() {

        var descMap = {
            'algiz' : "http://en.wikipedia.org/wiki/Algiz"
        }

        var res = []
        for (var i in fileList) {
            var fn =  String(fileList[i])
            var name = fn.substring("Runic_letter_".length, fn.length - 4)
            var o = {

                'img' : "sets/futhark/" + fn,
                'name' : name,
                'descUrl' : "http://en.wikipedia.org/wiki/" + name

            }
            res.push( o )
        }

        return res
    }


}
