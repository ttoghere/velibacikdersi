import 'package:flutter/material.dart';

//Türetme durumu için başlangıç taslağı soyut(abstract) sınıflardır
abstract class BaseState<T extends StatefulWidget> extends State<T> {
  //Context erişimi için stateful olarak eklenmiştir miras alınan sınıf
  //Sayfaların temellerinde kullanılacak olan verileri oluşturmak için bu sınıf yaratılmıştır
  ThemeData get themeData => Theme.of(context);

  //Verilen değere göre ekranın yüksekliğinin belirlenmesini sağlar
  //Stabil olarak kullanılamayan bir değişkendir
  //Her yerde MediaQuery kullanılamaz
  double dynamicHeight(double value) =>
      MediaQuery.of(context).size.height * value;
  double dynamicWidth(double value) =>
      MediaQuery.of(context).size.width * value;
}

class Hello extends StatefulWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  _HelloState createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
