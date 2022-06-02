
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odev5/button.dart';

class Hesaplama extends StatefulWidget {
  const Hesaplama({Key? key}) : super(key: key);

  @override
  _HesaplamaState createState() => _HesaplamaState();
}

class _HesaplamaState extends State<Hesaplama> {
  int sayi1 = 0;
  int sayi2 = 0;
  String goster="";
  String sonuc = "0";
  String islemGecmisi ="geçmiş";
  String islem = "0";

  void btnTiklama(String buttonDegeri)
  {
    print(buttonDegeri);
    if(buttonDegeri == "AC"){
      sonuc = sonuc.substring(0,islem.length-1);
      if(sonuc == ""){
        sonuc = "0";
        islem = "0";
      }

    }else if(buttonDegeri == "+"){
        sayi1 = int.parse(goster) ;
        sonuc ="";
        islem = buttonDegeri;
    }
    else if(buttonDegeri == "="){
      sayi2 = int.parse(goster) ;
      if(islem == "+"){
        sonuc =  (sayi1+sayi2).toString();
      }
      goster=sonuc;

    }else{
      sonuc = int.parse(goster + buttonDegeri).toString();
    }
    setState(() {
      goster = sonuc;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2E6CE),
      appBar: AppBar(title:const Text("Hesap Makinesi",style: TextStyle(color: Color(0xFFF0ADBB),fontWeight: FontWeight.bold)),backgroundColor: Color(0xFFA67E5B), centerTitle: true,),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 25.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(islem,style: TextStyle(fontSize: 20,color: Color(0xFFF0ADBB),fontWeight: FontWeight.bold)),
                ),

              ),
              Container(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(goster,style: TextStyle(fontSize: 20,color: Color(0xFFA67E5B),fontWeight: FontWeight.bold)),
                ),
              ),

              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.only(left: 65.0),
                  child: Button(
                    buttonIcerik: "AC",
                    buttonRenk: 0xFFF0ADBB,
                    yaziRenk: 0xFFA67E5B,
                    buttonYukseklik: 24.0,
                    tiklama: btnTiklama,),
                ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    buttonIcerik: "7",
                    buttonRenk: 0xFFA67E5B,
                    yaziRenk: 0xFFF0ADBB,
                    buttonYukseklik: 24.0,
                    tiklama: btnTiklama,
                  ),
                  Button(
                    buttonIcerik: "8",
                    buttonRenk: 0xFFA67E5B,
                    yaziRenk: 0xFFF0ADBB,
                    buttonYukseklik: 24.0,
                    tiklama: btnTiklama,
                  ),
                  Button(
                    buttonIcerik: "9",
                    buttonRenk: 0xFFA67E5B,
                    yaziRenk: 0xFFF0ADBB,
                    buttonYukseklik: 24.0,
                    tiklama: btnTiklama,
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    buttonIcerik: "4",
                    buttonRenk: 0xFFA67E5B,
                    yaziRenk: 0xFFF0ADBB,
                    buttonYukseklik: 24.0,
                    tiklama: btnTiklama,
                  ),
                  Button(
                    buttonIcerik: "5",
                    buttonRenk: 0xFFA67E5B,
                    yaziRenk: 0xFFF0ADBB,
                    buttonYukseklik: 24.0,
                    tiklama: btnTiklama,
                  ),
                  Button(
                    buttonIcerik: "6",
                    buttonRenk: 0xFFA67E5B,
                    yaziRenk: 0xFFF0ADBB,
                    buttonYukseklik: 24.0,
                    tiklama: btnTiklama,
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    buttonIcerik: "1",
                    buttonRenk: 0xFFA67E5B,
                    yaziRenk: 0xFFF0ADBB,
                    buttonYukseklik: 24.0,
                    tiklama: btnTiklama,
                  ),
                  Button(
                    buttonIcerik: "2",
                    buttonRenk: 0xFFA67E5B,
                    yaziRenk: 0xFFF0ADBB,
                    buttonYukseklik: 24.0,
                    tiklama: btnTiklama,
                  ),
                  Button(
                    buttonIcerik: "3",
                    buttonRenk: 0xFFA67E5B,
                    yaziRenk: 0xFFF0ADBB,
                    buttonYukseklik: 24.0,
                    tiklama: btnTiklama,
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    buttonIcerik: "0",
                    buttonRenk: 0xFFA67E5B,
                    yaziRenk: 0xFFF0ADBB,
                    buttonYukseklik: 24.0,
                    tiklama: btnTiklama,
                  ),
                  Button(
                    buttonIcerik: "+",
                    buttonRenk: 0xFFF0ADBB,
                    yaziRenk: 0xFFA67E5B,
                    buttonYukseklik: 24.0,
                    tiklama: btnTiklama,
                  ),
                  Button(
                    buttonIcerik: "=",
                    buttonRenk: 0xFFF0ADBB,
                    yaziRenk: 0xFFA67E5B,
                    buttonYukseklik: 24.0,
                    tiklama: btnTiklama,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
