Nama: Naila Azizah

NPM: 2106705814

# **Tugas 7: Elemen Dasar Flutter**

Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
- 

### **Stateless Widget**
Stateless Widget adalah widget yang tidak dapat diubah atau tidak akan pernah berubah
- Stateless widget berguna ketika bagian dari interface tidak bergantung pada apa pun selain informasi konfigurasi di obyek itu sendiri dan BuildContext dismana widget tersebut meningkat. 

### **Stateful Widget**
Stateful Widget merupakan widget yang dinamis atau dapat berubah
- Widget stateful berguna jika bagian dari antarmuka pengguna yang Anda gambarkan dapat berubah secara dinamis. 


Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
-
- Text untuk menampilkan counter dan text status GANJIL atau GENAP
- FloatingActionButton sebagai event untuk increment atau decrement counter


Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
-
setState() merupakan fungsi dapat digunakan pada stateful widget, fungsi ini menandakan jika ada perubahan yang terjadi pada aplikasi sehingga aplikasi akan reload program dan menampilkan perubahan. 

Contoh variabel yang terdampak dalam fungsi setState() adalah _counter saat button increment atau decrement ditekan

Jelaskan perbedaan antara const dengan final.
-
Keduanya merupakan keyword yang dapat digunakan untuk membuat variabel yang bersifat immutable.

### **Const**
- mengharuskan variabel harus dinialisasi pada saat kompilasi
- nilai bersifat konstan dan secara langsung / eksplisit sehingga pada saat kompilasi variabel const sudah memiliki nilai

### **Final**
- final tidak mengharuskan variabel memiliki nilai secara langsung / eskplisit pada saat kompilasi

Jelaskan bagaimana cara kamu mengimplementasikan checklist 
- 
1. Membuat sebuah program Flutter baru dengan nama counter_7.

2. Mengubah tampilan program 

3. Mengimplementasikan logika berikut pada program.

- Tombol + menambahkan angka sebanyak satu satuan.
- Tombol - mengurangi angka sebanyak satu satuan. Apabila counter bernilai 0, maka tombol - tidak memiliki efek apapun pada counter.
- Apabila counter bernilai ganjil, maka teks indikator berubah menjadi "GANJIL" dengan warna biru.
- Apabila counter bernilai genap, maka teks indikator berubah menjadi "GENAP" dengan warna merah.
- Angka 0 dianggap sebagai angka genap.

# **Tugas 8: Flutter Form**
Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
- 
- Navigator.push: menambahkan route lain ke atas tumpukan screen (stack) saat ini. Halaman baru ditampilkan di atas halaman sebelumnya.
- Navigator.pushReplacement: mengganti route lain menjadi layer baru di halaman yang sama

Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
-
- Form(): Membuat sebuah container untuk dijadikan parent dari input
- ListTile(): componet berisis widget
- Card(): membentuk sebuah component card sebagai container yang diiterasi untuk tiap data 
- Drawer(): Panel untuk melakukan perpindahan tampilan
- DropdownButton(): menampilkan dropdown dan sebagai fields untuk menerima input 
- TextFormField(): menerima input berupa text


Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
-
- onPressed: terpanggil saat button ditekan
- onLongPress: terpanggil saat button mengalami long-pressed
- onFocusChange: terpanggil saat focus berganti 
- onHover: terpanggil saat pointer masuk ke button response area


Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
-
- Navigator bekerja dalam struktur stack: tampilan yang muncul adalah yang paling atas
- Elemen yang terakhir dimasukkan adalah elemen yang pertama kali di remove dari stack (Last in First Out)
- Ketika navitagor push(), halaman baru ditampilkan di atas halaman sebelumnya
- Ketika navigator pushReplacement(), halaman lama akan mengganti diri menjadi layer baru


Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
-
1. Menambahkan drawer/hamburger menu pada app yang telah dibuat sebeumnya.

Diimpelementasikan dengan menambahkan file drawer.dart dengan 3 route
- Navigasi pertama untuk ke halaman counter: route ke main.dart
- Navigasi kedua untuk ke halaman form: route ke form.dart
- Navigasi ketiga untuk ke halaman yang menampilkan data budget yang telah di-input melalui form: route ke budget.dart

2. Menambahkan tiga tombol navigasi pada drawer/hamburger.
Diimplementasikan dengan potongan kode sebagai berikut:
```
ListTile(
          title: const Text('counter_7'),
          onTap: () {
            // Route menu ke counter
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage()),
            );
          },
        ),
```
Membuat 3 tombol dengan menambahkan route untuk MyFormPage dan MyBudgetPage

3. Menambahkan halaman form

Membuat form widget untuk mengambil input, yaitu string input untuk judul, int untuk nominal, dan juga dropdown untuk jenis pengeluaran atau pemasukan
- Menambahkan elemen input dengan tipe data String berupa judul budget.
- Menambahkan elemen input dengan tipe data int berupa nominal budget.
- Menambahkan elemen dropdown yang berisi tipe budget dengan pilihan pemasukan dan pengeluaran. 
- Menambahkan button untuk menyimpan budget: 

4. Menambahkan halaman data budget

Membuat budget.dart yang mendisplay hasil input dalam bentuk container dan mengakses database dengan mengambil variable judul, nominal, dan jenis







