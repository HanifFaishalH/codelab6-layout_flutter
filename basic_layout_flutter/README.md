# Pertemuan 6: Layout dan Navigasi

**NIM**: 2341720116
**Nama**: Hanif Faishal Hilmi

---

## 📌 Praktikum

### ✅ Praktikum 1: Membangun Layout di Flutter

Membuat layout, mengimplementasi **title section**, dan menambahkannya ke `Column`.

![Output Praktikum 1](/basic_layout_flutter/img_output/C6_PRAK1.jpg)

---

### ✅ Praktikum 2: Implementasi Button Row

Membuat **button row** dan menambahkannya ke `Column`.

![Output Praktikum 2](/basic_layout_flutter/img_output/C6_PRAK2.jpg)

---

### ✅ Praktikum 3: Implementasi Text Section

Membuat **text section** dan menambahkannya ke `Column`.

![Output Praktikum 3](/basic_layout_flutter/img_output/C6_PRAK3.jpg)

---

### ✅ Praktikum 4: Implementasi Image Section

Membuat **image section**, menambahkannya ke `Column`, lalu mengubah `Column` menjadi `ListView`.

![Output Praktikum 4](/basic_layout_flutter/img_output/C6_PRAK4.jpg)

---

### ✅ Praktikum 5: Membangun Navigasi di Flutter

Membuat navigasi sederhana agar dapat berpindah halaman.

![Output Praktikum 5](/basic_layout_flutter/img_output/C6_PRAK5_1.jpg)
![Output Praktikum 5](/basic_layout_flutter/img_output/C6_PRAK5_2.jpg)
![Output Praktikum 5](/basic_layout_flutter/img_output/C6_PRAK5_3.jpg)

---

## 📌 Tugas Praktikum 2

### 1. Pengiriman Data Menggunakan `Navigator`

Menambahkan `arguments` pada penggunaan `Navigator`:

```dart
Navigator.pushNamed(context, '/item', arguments: item);
```

📂 Halaman: **home_page.dart**

![Output Tugas Praktikum 2 no 1](/basic_layout_flutter/img_output/C6_TUGPRAK2_1.png)

---

### 2. Pembacaan Data dengan `ModalRoute`

Mengambil data yang dikirimkan dari halaman sebelumnya:

```dart
final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
```

📂 Halaman: **item_page.dart**

![Output Tugas Praktikum 2 no 2](/basic_layout_flutter/img_output/C6_TUGPRAK2_2.png)

---

### 3. Penambahan Atribut Produk + Tampilan GridView

Menambahkan atribut **foto produk, stok, dan rating**, lalu mengubah tampilan menjadi **GridView** seperti aplikasi marketplace.

![Output Tugas Praktikum 3 Home](/basic_layout_flutter/img_output/C6_TUGPRAK2_3_home.png)
![Output Tugas Praktikum 3 DisplayHome](/basic_layout_flutter/img_output/C6_TUGPRAK2_3_displayHome.png)
![Output Tugas Praktikum 3 Item](/basic_layout_flutter/img_output/C6_TUGPRAK2_3_item.png)
![Output Tugas Praktikum 3 DisplayItem](/basic_layout_flutter/img_output/C6_TUGPRAK2_3_displayItem.png)

---

### 4. Implementasi `Hero Widget`

Menambahkan animasi transisi menggunakan **Hero Widget**.

![Output Hero Home](/basic_layout_flutter/img_output/C6_TUGPRAK2_4_HeroHome.png)
![Output Hero Item](/basic_layout_flutter/img_output/C6_TUGPRAK2_4_HeroItem.png)

---

### 5. Modifikasi Tampilan + Footer Identitas

Memodifikasi tampilan agar lebih menarik, memecah widget menjadi kode kecil, serta menambahkan **Nama dan NIM di footer aplikasi**.

![Output Home Display](/basic_layout_flutter/img_output/C6_TUGPRAK2_5_homeDisplay.png)
![Output Home Page](/basic_layout_flutter/img_output/C6_TUGPRAK2_5_homePage.png)
![Output Product Card](/basic_layout_flutter/img_output/C6_TUGPRAK2_5_ProductCard.png)

---

### 6. Navigasi dengan `go_router`

Mencoba modifikasi navigasi menggunakan **plugin go_router**, lalu dokumentasi hasilnya.

![Output go\_router 1](/basic_layout_flutter/img_output/C6_TUGPRAK2_6_1.png)
![Output go\_router 2](/basic_layout_flutter/img_output/C6_TUGPRAK2_6_2.png)
![Output go\_router 3](/basic_layout_flutter/img_output/C6_TUGPRAK2_6_3.png)
![Output go\_router 4](/basic_layout_flutter/img_output/C6_TUGPRAK2_6_4.png)

---

## 🎉 Hasil Akhir

Berikut hasil akhir aplikasi dalam bentuk **GIF animasi**:

![Output Result](/basic_layout_flutter/img_output/result.gif)

---
