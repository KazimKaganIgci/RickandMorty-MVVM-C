# RickandMorty-MVVM-C


MVVM-C (Model-View-ViewModel-Coordinator), bir tasarım deseni olarak kullanılan bir yapıdır Bu yapı, Model-View-ViewModel (MVVM) desenini geliştirir ve uygulamaya bir Coordinator ekleyerek sayfa yönetimini daha etkili bir şekilde ele alır.

Model:
Model, uygulamanın temel veri yapısını ve iş mantığını temsil eder. Verilerin saklanması, işlenmesi ve uygulama kurallarının uygulanması bu katmanda gerçekleşir. Kullanıcı arayüzü (View) veya kullanıcı etkileşimi (Controller) ile doğrudan etkileşime girmez.

ViewModel:
View ile Model arasında arabuluculuk yapar. ViewModel, View için gerekli olan veriyi sağlar, kullanıcı etkileşimlerini işler ve Model ile olan iletişimi yönetir. ViewModel, genellikle View'den bağımsız olarak test edilebilir ve tekrar kullanılabilir olmalıdır. Bu sınıf, Servis ve View arasındaki bağlantıyı sağlar. Servisten gelen veriler ViewModel tarafından yönetilen Observable değişkenlere atanır ve View istediği zaman bu değişkenleri kullanarak güncellemeleri alır.

View:
Kullanıcı arayüzünü temsil eder ve kullanıcının gördüğü grafiksel veya metinsel öğeleri içerir. ViewModel'e istenen işlemleri bildirir ve ViewModel, bu işlemleri gerçekleştirir. Bu sayede View, tembel çalışma prensibiyle daha az iş yapar ve uygulama mantığını ViewModel'a bırakır.

Coordinator:
Coordinator sınıfı, sayfa yönetimini sağlar. ViewModel, View'den aldığı bilgiler doğrultusunda Coordinator'a haber verir, ardından Coordinator, sayfa değişikliklerini yönetir. Coordinator'ın kullanılması, test edilebilirliği arttırır ve View'in sorumluluklarını azaltarak kodun daha temiz olmasını sağlar.

Bu yapıyı kullanmanın avantajlarından biri, her bileşenin belirli bir sorumluluğa odaklanarak, kodun daha okunabilir, bakımı daha kolay ve test edilebilir olmasını sağlamaktır. Ayrıca, Coordinator kullanımı sayesinde sayfa yönetimi daha düzenli bir şekilde ele alınabilir.

<img width="394" alt="Screenshot 2023-12-02 at 22 06 40" src="https://github.com/KazimKaganIgci/RickandMorty-MVVM-C/assets/61113947/10a6d6af-ffe4-4d62-ac9c-b901dd9c518b">
