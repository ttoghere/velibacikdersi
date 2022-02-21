import 'package:flutter_test/flutter_test.dart';

main() {
  //Uygulama açıldığında çalışan ilk fonksiyon --> setUp
  setUp(() {
    print("Selam");
  });

  //Unit test ile genel kontroller yapılır
  //Ne kadar çok test yapılırsa başarıya yönelik problem sayısı azalır
  //MARK: test1 
  test("User Login Fail Test", (() {
    final isUserLogin = true;
    //Burada yazılmış olan test çalışıyorsa
    //Sorun yok demektir
    expect(isUserLogin, isTrue);
  }));
}
