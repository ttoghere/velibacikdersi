/*
##############
Konular:
-MVVM Pattern
-Feature Based
-Klasörleme
##############
MVVM: Model View ViewModel
Business logicler için kullanılan versiyon

MVC: Model View Controller -->
Basit düzeyde olan katmanlı mimari

Feature Based olarak yerleşim daha sağlıklı olmaktadır
core:
business kapsamlarının içinde bulunması gereken klasör
--> Base: kullanılacak olan taslak bazlarının bulunduğu klasör
--> Constants: kullanılacak olan veri, ayar, içerik vb. sabitlerinin
kolay erişim ve hızlı ayrıca verimli kod yazımı için kullanılan verilerin
sınıflandırarak bulunduğu klasör
--> Init: uygulamada sayfa açılışlarında otomatik olarak devreye girecek olan
fonksiyonları içeren dosyaları içeren klasördür
--> Widgets: Reaktif olarak çoklu kullanılabilecek olan taslakların bulunduğu klasör

**Core katmanı içinde olan dosyalar başka projelere de taşınabilir**

view:
Front-end kısmının içerildiği klasör
**servis testlerinin bulunacağı klasör içinde olmaktadır**

mock:
ana modele dokunmadan değişikliklerin denenmesini sağlar
*/

/*
Base yapısı:
Flutter projesi büyüdükçe yaşam döngülerinin kontrolünü kolaylaştırır
Proje başlangıcında oluşturulması gereklidir
Sürekli olarak kullanılabilecek olan verilere erişimi sağlar





 */