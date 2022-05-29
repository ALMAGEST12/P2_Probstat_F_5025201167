## PRAKTIKUM 2 PROBSTAT F 
NAMA : WILLIAM ZEFANYA MARANATHA

NRP : 5025201167

KELAS : F

## Soal 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap
kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel
sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat
kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut
diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali
kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden
mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴
Berdasarkan data pada tabel di modul , diketahui kadar saturasi oksigen dari
responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah
melakukan aktivitas 𝐴 sebanyak 70.

![image](https://user-images.githubusercontent.com/89374566/170876638-4369763e-4413-44d5-9eae-32e9eea56795.png)

a. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel
diatas
b. carilah nilai t (p-value)
c. tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan
aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada
pengaruh yang signifikan secara statistika dalam hal kadar saturasi
oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

### Penyelesaian:
#### 1.A
Masukkan semua data ke tabel pada sebuah variabel
``` 
before <- c(78, 75, 67, 77, 70, 72, 28, 74, 77)
```
``` 
after <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)
```
Setelah itu kita hitung selisih 2 data tersebut, hitung standar deviasinya
``` 
selisih1 <- c(22, 20, 3, 13, 20, 18, 11, 16, 23)
sd(selisih)
```
maka hasil :

![image](https://user-images.githubusercontent.com/89374566/170877932-9d03f1b6-d5bf-4faf-9ede-d9c977c9bf0e.png)

#### 1.B
Kita hitung nilai t setelah mendapatkan 2 data sebelumnya
```
mean1 <- mean(before)
mean2 <- mean(after)

sd1 <- sd(before)
sd2 <- sd(after)

varians1 <- sd1 ^ 2
varians2 <- sd2 ^ 2

t_value1<- abs(mean2 - mean1) / sqrt((varians1/9) + (varians2/9))
t_value1
```
maka hasil :

![image](https://user-images.githubusercontent.com/89374566/170878048-12a5cddf-d1bd-464b-9556-4e035dfc6fd1.png)

#### 1.C
Menggunakan t.test untuk menguji hipotesis 
```
t.test(after, before)
```

![image](https://user-images.githubusercontent.com/89374566/170878164-813259f8-f5ca-40a7-ae7d-3943b73ffed6.png)

Dari hasil p maka H0 ditolak. Jadi ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴.

## Soal 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.
Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk
mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata
23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan
library seperti referensi pada modul).
a. Apakah Anda setuju dengan klaim tersebut?
b. Jelaskan maksud dari output yang dihasilkan!
c. Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!
### Penyelesaian:
#### 2.A
Ya, saya setuju
#### 2.B
Masukkan data, karena yang kita peroleh bukan data mentah, maka menggunakan tsum.test
```
data2 <- list("mean" = 23500, "mean_hipo" = 20000, "sd" = 3900, "n" = 100)
tsum.test(mean.x = data2$mean, n.x = 100, sd(data2$sd), mu = data2$mean_hipo)
```

![image](https://user-images.githubusercontent.com/89374566/170878965-311a52fc-f660-4a73-b39c-200a61646cc2.png)

dari hasil didapatkan
```
H0 : mean = 20000
```
```
H0 : mean > 20000
```
#### 2.C
Cari nilai Z

![image](https://user-images.githubusercontent.com/89374566/170879099-02f7f2e2-b832-4586-8c72-40f8d0aa6d57.png)

Lalu cari nilai p nya

![image](https://user-images.githubusercontent.com/89374566/170879133-4b670b50-7529-45fa-a44a-1873dbd45de1.png)

![image](https://user-images.githubusercontent.com/89374566/170879182-f7071b93-7bb5-483f-850c-dcf623c101ef.png)

kesimpulannya adalah mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun

## Soal 3
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan
permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya
didapatkanlah data berikut dari perusahaan saham tersebut.

![image](https://user-images.githubusercontent.com/89374566/170879230-f59f54c9-3ccb-4a7f-8d7f-0bd6534332b1.png)

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil
diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada
rata-ratanya (α= 0.05)? Buatlah :
A. H0 dan H1
B. Hitung Sampel Statistik
C. Lakukan Uji Statistik (df =2)
D. Nilai Kritikal
E. Keputusan
F. Kesimpulan

### Penyelesaian:
#### 3.A
H0 dan H1 dilakukan perhitungan H0 sebagai berikut

![image](https://user-images.githubusercontent.com/89374566/170879289-824baac6-e1f5-4121-9dba-1f6d91de4aec.png)

dilakukan perhitungan H1 sebagai berikut

![image](https://user-images.githubusercontent.com/89374566/170879311-c0b1caca-38bf-4cee-8a26-2f01e51dfd6e.png)

#### 3.B
Hitung Sampel Statistik Penghitungan dilakukan sebagai berikut

```
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, mean.y =2.79 , s.y = 1.32, n.y = 27, alternative = "greater", var.equal = TRUE)
```

![image](https://user-images.githubusercontent.com/89374566/170879351-6e78f8ca-9a20-4689-bf01-1285fd30be87.png)

#### 3.C
Lakukan Uji Statistik (df =2)
```
plotDist(dist='t', df=2, col="blue")
```
![image](https://user-images.githubusercontent.com/89374566/170879419-2aedff86-5bc1-4493-8ace-85a7f7cf1695.png)

#### 3.D
Untuk mendapatkan nilai kritikal bisa menggunakan qchisq dengan df=2

![image](https://user-images.githubusercontent.com/89374566/170879502-d7b7a1b0-f1f6-4ab7-bc65-ec7b412556e4.png)

#### 3.E
Keputusan

Teori keputusan adalah teori formal pengambilan keputusan di bawah ketidakpastian. Aksinya adalah : ({a}_{a∈A}) Kemungkinan konsekuensi : ({c}_{c∈C}) (tergantung pada keadaan dan tindakan) Maka keputusan dapat dibuat dengan t.test

#### 3.F
Kesimpulan Kesimpulan yang didapatkan yaitu perbedaan rata-rata yang terjadi tidak ada jika dilihat dari uji statistik dan akan ada tetapi tidak signifikan jika dipengaruhi nilai kritikal.

## Soal 4
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya
ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan
kucing putih dengan panjangnya masing-masing.
Jika :
diketahui dataset https://intip.in/datasetprobstat1
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya
sama
Maka Kerjakan atau Carilah:
A. Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup
2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan
lihat apakah ada outlier utama dalam homogenitas varians.
B. carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang
didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?
C. Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus
Grup dan beri nama model tersebut model 1.
D. Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan
dari H0?
E. Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p
yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain?
Jelaskan.
F. Visualisasikan data dengan ggplot2

### Penyelesaian:
#### 4.A
Ambil data dari url, lalu split by group dan masukkan masing masing ke variable terpisah  
```
data4 <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"),header = TRUE, check.names = TRUE)
byGroup <- split(data4, data4$Group)
group1 <- byGroup$`1`
group2 <- byGroup$`2`
group3 <- byGroup$`3`
```
Lalu lihat grafik datanya
```
hist(group1$Length, xlim = c(16, 20))
hist(group2$Length, xlim = c(16, 20))
hist(group3$Length, xlim = c(16, 20))
```
Setelah itu, dicek apakah dia menyimpan nilai di groupnya
```
class(myFile$Group)
```
Lalu bagi tiap valuer menjadi 3 bagian ke 3 grup
```
group1 <- subset(myFile, Group=="Kucing Oren")
group2 <- subset(myFile, Group=="Kucing Hitam")
group3 <- subset(myFile, Group=="Kucing Putih")
```
#### 4.B
carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?

Mencari Homogeneity of variances bisa menggunakan command sebagai berikut
```
bartlett.test(Length~Group, data=dataoneway)
```
Setelah di jalankan maka nilai p-value = 0.8054. Kesimpulan yang didapatkan yaitu Bartlett's K-squared memiliki nilai sebesar 0.43292 dan df bernilai 2
#### 4.C
```
qqnorm(group1$Length)
qqline(group1$Length)
```

![image](https://user-images.githubusercontent.com/89374566/170879937-9bf1d763-1b3a-46a1-bf9e-96b1566a45bb.png)
#### 4.D
Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan dari H0? Setelah di jalankan maka nilai p-value = 0.8054.

#### 4.E
Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? 3 Jelaskan. Langkah pertama adalah menggunakan command ANOVA
```
model1 <- lm(Length~Group, data=myFile)
```
Selanjutnya menggunakan command
```
anova(model1)
```
Lalu menggunakan model Post-hoc Tukey HSD sebagai berikut
```
TukeyHSD(aov(model1))
```
#### 4.F
Visualisasikan data dengan ggplot2
```
library(ggplot2)
ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)"
```
## Soal 5
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk
mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca
pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan
dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil
Eksperimen. Dengan data tersebut:
a. Buatlah plot sederhana untuk visualisasi data
b. Lakukan uji ANOVA dua arah
c. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk
setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
d. Lakukan uji Tukey
e. Gunakan compact letter display untuk menunjukkan perbedaan signifikan
antara uji Anova dan uji Tukey
Berikut adalah contoh daftar package dan fungsi yang dapat digunakan (dapat pula
menggunakan contoh lainnya)
● Packages: readr, ggplot2, multcompView, dplyr
● Function: aov, TukeyHSD, qplot, group_by, summarise, multcompLetters4
### Penyelesaian:
#### 5.A
Baca data csv dan lihat dengan qplot + facet_wrap
```
data5 <- read_csv("E:/Semester 4/Probstat/Prak/P2_Probstat_A_5025201187/GTL.csv")
qplot(Temp, Light, data = data5) + facet_wrap(~Glass)
```
maka hasilnya

![image](https://user-images.githubusercontent.com/89374566/170880211-29af623b-c8e1-4dbb-ba0f-c96c2f4894c2.png)
#### 5.B
Gunakan aov dan lihat summary nya
```
av <- aov(Light ~ factor(Glass)*factor(Temp), data = data5)
summary.aov(av)
```
maka hasilnya

![image](https://user-images.githubusercontent.com/89374566/170880253-805db40d-9f8f-46aa-b9fd-b0cb51080692.png)
#### 5.C
Gunakan group by Glass dan Temp dulu baru summarize
```
group_by(data5, Glass, Temp)%>% 
  summarize(
    mean = mean(Light),
    standar_deviasi = sd(Light)
)
```
maka hasilnya

![image](https://user-images.githubusercontent.com/89374566/170880311-b560f78e-40e1-4881-b5ff-ca7119f0406a.png)
#### 5.D
Uji Tukey digunakan dengan TuckeyHSD
```
hsd <- TukeyHSD(av)
hsd
```
maka hasilnya

![image](https://user-images.githubusercontent.com/89374566/170880351-863ad538-7043-417e-a5b0-3a64e859f8f6.png)
#### 5.E
compact letter display dapat dicari dengan multcompLetters4
```
multcompLetters4(av, hsd)
```
maka hasilnya

![image](https://user-images.githubusercontent.com/89374566/170880389-76a4fa37-f276-4794-8d83-4fad456c9a41.png)
