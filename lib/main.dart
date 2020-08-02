import 'package:aplikasi_cemilan/DetailPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('List Makanan'),
      ),
      body: _PageList(),
    );
  }
}

final baseTextStyle = const TextStyle(color: Colors.white, fontFamily: 'arial');

final bigHeaderTextStyle =
    baseTextStyle.copyWith(fontSize: 24.0, fontWeight: FontWeight.bold);

final descTextStyle =
    baseTextStyle.copyWith(fontSize: 18.0, fontWeight: FontWeight.w400);

final footerTextStyle =
    baseTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w400);

class _PageList extends StatefulWidget {
  @override
  __PageStateListState createState() => __PageStateListState();
}

class __PageStateListState extends State<_PageList> {
  List<String> judul = [
    'Ayam bakar',
    'coklat',
    'indomieaceh',
    'nasigoreng',
    'pecellele',
    'rendang',
    'sotobetawi',
    'keleopn',
    'mieaceh',
    'sate',
  ];

  List<String> subjudul = [
    'makanan enak banget \n \n',
    'gua suka banget sama makan coklat \n \n',
    'indomie enak kuy \n \n',
    'by : Misbah Bagaskara Purwanto \n \n',
    'by : Misbah Bagaskara Purwanto \n \n',
    'by : Misbah Bagaskara Purwanto \n \n',
    'by : Misbah Bagaskara Purwanto \n \n',
    'by : Misbah Bagaskara Purwanto \n \n',
    'by : Misbah Bagaskara Purwanto \n \n',
    'by : Misbah Bagaskara Purwanto \n \n',
  ];

  List<String> gambar = [
    'assets/images/ayambakar.png',
    'assets/images/coklat.png',
    'assets/images/indomieaceh.png',
    'assets/images/nasigoreng.png',
    'assets/images/pecellele.png',
    'assets/images/rendang.png',
    'assets/images/sotobetawi.png',
    'assets/images/keleopn.png',
    'assets/images/mieaceh.png',
    'assets/images/sate.png',
  ];

  List<String> jmlh = [
    '20',
    '20',
    '20',
    '20',
    '20',
    '20',
    '20',
    '20',
    '20',
    '20',
    '20',
    '20',
    '20',
  ];

  List<String> bahanbahan = [
    'bahan bahan \n \n',
    'bahan bahan \n \n',
    'bahan bahan \n \n',
    'bahan bahan \n \n',
    'bahan bahan \n \n',
    'bahan bahan \n \n',
    'bahan bahan \n \n',
    'bahan bahan \n \n',
    'bahan bahan \n \n',
    'bahan bahan \n \n',
  ];
  List<String> listbahan = [
    '1. 1 kg Ayam\n 2.Bumbu ungkep :\n 3. 10 Bawang putih\n 4. 1 sdt ketumbar\n  5. 1 sdt merica butir\n  6. 5 butir Kemiri\n 7. Lengkuas\n 8. Beberapa ruas kunyit\n  9. 3 cm jahe (digeprek)\n  10. Garam\n  ',
    '1. 200 gr susu cair\n 2.100 gr skm\n 3.10 gr coklat powder/coklat pahit\n  4.8 gr maizena\n  5.100 gr dcc potong2\n  6.20 gr butter/margarin\n 7.Sejumput garam\n 8. Sponge cake strawberry/mocca:\n  ',
    '1. 3 bungkus Mie instan\n 2. 2 sendok Kecap \n 3. Bumbu\n 4. 2 biji kemiri\n 5. 5 biji Cabe \n 6. 3 Bawang merah \n 7. 1 Bawang putih\n 8. 1 Tomat\n 9. 2 sendok teh Garam\n 10. 1/2 sendok teh Merica\n   ',
    '1. 1 piring nasi dingin\n  2. 5 bh cabe rawit,\n iris 3. 3 bh bawang merah,\n iris  4. 2 siung bawang putih,\n iris  5. 1 btr telur\n  6. 1 sdm kecap manis\n  7. 1 sdm kecap asin\n  8. 1/2 sdt gula pasir\n 9. 1/2 sdt merica\n  10. secukupnya Garam\n ',
    '1. Ikan lele 3 ekor\n 2.  Minyak goreng untuk menggoreng ikan\n 3. Bawang putih - 3 siung\n 4. Kunyit - 1/2 ruas\n 5.  Garam - 1/4 sdt\n 6. Cabe rawit - 10\n buah 7. Cabe besar - 3\n buah 8. Bawang merah - 3 siung\n 9.  Tomat - 1 buah\n',
    '1. 700 gram daging kambing\n  2.1 butir kelapa parut / 1000 ml santan\n  3. 1 potong asam gelugur\n  4. 4 lbr daun jeruk purut\n  5. secukupnya Garam\n  6. 1 lbr daun kunyit\n 7. 2 lbr daun salam\n  8. 2 buah bunga lawang\n  Bumbu dihaluskan :\n 9. 200 gram cabe merah\n  ',
    '1. 500 gram Daging sapi \n 2. 100-200 ml santan kental kemasan \n 3. 200 ml Susu ultra plain \n \n Bumbu halus:\n  \n 4. 6 siung Bawang merah besar  \n 5. 3 siung Bawang putih besar \n 6.1 ruas Jahe  \n 7. 1 butir Kemiri \n 8. 1 sdt Ketumbar bubuk 9. 1 sdt Lada bubuk \n ',
    '1. 250 gram tepung ketan putih\n 2. 50 gram tepung beras\n 3. 150 gram gula merah, di iris halus\n 4. 2 sendok teh larutan air kapur sirih\n \n Pasta pandan secukupnya\n \n ',
    '1. 250 gr mie kering (saya pakai mie lidi). Rebus matang. Tiriskan \n 2. 6 bh bawang merah \n 3. 4 bh bawang putih \n 4. 7 bh cabe merah/sesuai selera \n 5. 10 bh cabe rawit/sesuai selera \n 6. 1 bh tomat \n 7. 1 ruas jahe \n 8. 4 btr kemiri sangrai \n',
    '1. 1/2 kg Daging kambing dipotong2 sesuai arah serat \n 2. 1 sdm Bawang putih bubuk \n 3. 1/2 sdt Merica bubuk  4. 2 sdm Kecap \n 5. 1/2 sdt Garam \n 6. 1/2 sdt Kaldu bubuk \n 7.  Lalapan : cabe,tomat buah,dan daun selada \n'
  ];

  List<String> listbahan2 = [
    '11. 4 lembar daun salam\n 12. Bumbu olesan :\n 13. 4 siung bawang putih\n  14. 1 sdt ketumbar\n  15. 20 cabai rawit (sesuaikan dgn selera)\n  16. Kecap manis\n  17. 1 buah jeruk limau/nipis\n  18. Minyak\n   ',
    '9.4 kuning telur\n  10.4 putih telur\n 11. 80 gr gula pasir\n  12. 80 gr susu cair\n  13. 1 sdt pasta stroberry/mocca\n  14. 50 gr minyak\n  15. 80 gr terigu serbaguna\n  16. 1 sdt baking powder\n ',
    '',
    '',
    '10. Terasi - 1/2 sdt\n 11. Gula merah - 1/2 sdm\n 12. Minyak untuk menggoreng - 3 sdm\n 13. Garam - secukupnya\n  ',
    '10. 100 gram bawang merah\n  11. 2 siung bawang putih\n  12. 4 cm jahe\n  13. 8 cm kunyit\n  14. 10 cm langkuas\n  15. 2 buah kemiri\n  16. 1 batang sreh\n  17. 1 sdm ketumbar\n  18. 1/2 buah pala\n  19. 1/2 sdt jintan\n   ',
    '10. 1/2 sdt Jintan bubuk \n \n Bumbu tambahan:  \n \n 11. 1 batang Serai \n 12.3 buah Cengkeh \n 13. 3 lmbar Daun salam \n 14. 2 lmbar Daun jeruk \n 15. 5 cm kayu manis \n 16. 1-3 sachet Masako sapi \n ',
    '5. 1sendok teh garam halus\n \n Air secukupnya untuk adonan klepon \n \n 6. 200 gram kelapa parut muda\n 7. 1/2 sendok teh garam halus\n 8. 2 lembar daun pandan\n',
    '8. 2btr telur kocok \n 9. 1sdm bubuk kari \n 10. 3sdm kecap manis \n 11. 2sdm kecap asin \n 12. 1cangkir air (kaldu lbh enak) \n 13.garam dan gula \n 14.Secukupnya kol,sawi,seledri iris \n 15.penyedap bubuk \n 16.minyak goreng \n  ',
    '',
  ];

  List<String> carapembuatan = [
    '1. Ulek semua bumbu ungkep lalu tumis hingga harum, beri air, masukkan daun salam dan ayam. Ungkep kurang lebih\n 1 jam agar daging empuk. Angkat dan lalu buat beberapa belahan agar ketika dibakar, bumbu meresap sampai ke dalam\n',
    '1. Coklat lumer:campur coklat bubuk dan maizena,aduk rata \n 2. Masukan susu cairs,skm aduk rata,lalu nyalakan api sedang sambil di aduk2 hingga mengental \n 3. selengkapnya bisa klick link https://cookpad.com/id/resep/6126253-dessert-box-coklat-lumer\n',
    '1. Siapkan bumbu halus, lalu belender\n 2. Cuci sawi dan rajang kasar tomat\n 3. Tumis bumbu halus sampai mengeluarkan harum dan masukan sayuran serta tomat\n 4.selengkapnya bisa klicl link https://cookpad.com/id/resep/6565017-mie-aceh-indomie-becek\n',
    '1. Kocok telur beri sedikit garam. Panaskan minyak di wajan. Masukkan telur, bikin orak arik. Sisihkan\n  2. Dg sisa minyak di wajan, tumis bawang merah, bawang putih dan cabe hingga harum. Masukkan nasi dan telur orak arik. Beri kecap2an, garam, gula dan merica. Aduk rata \n 3. untuk selengkapnya bisa klik link https://cookpad.com/id/resep/6306463-nasi-goreng-kampung',
    '1. Lele goreng: bersihkan lele dg melumuri seluruh bagian dg jeruk nipis (untuk meghilangkan lendir), lalu iris serong 3 sanyatan sesuai selera, lumuri dg bumbu lele, diamkan kira-kira 30 menit agar bumbu meresap, lumuri tipis2 dg tepung beras, kemudian goreng dg minyak yg telah panas & banyak sampai seluruh bagian lele terendam. Balik lele ketika satu bagian telah kering (agar tidak hancur), tunggu hinga matang. Angkat & sisihkan.\n 2. selengkapnya bisa di https://cookpad.com/id/resep/1725196-pecel-lele-lamongan-enak%F0%9F%92%95',
    '1. otong2 daging sapi segi empat, cuci bersih dan sisihkan\n 2.Panaskan wajan, Sangrai kelapa parut sampai berwarna coklat tua, angkat, tumbuk dan disisihkan\n 3. selengkapnya bisa di https://cookpad.com/id/resep/13321632-17-rendang-daging-sapi-ala-ala-bunda-asri?via=search&search_term=rendang%20daging',
    '1. Rebus daging sapi hingga empuk. Jika dengan panci presto 20-30 menit, jika dengan panci biasa 2-3 jam. Setelah daging empuk, potong dadu-dadu kecil, sisihkan. Air rebusan daging panaskan kembali (kurang lebih 500-1000 ml, silahkan atur sesuai selera).\n 2. selengkapnya bisa di https://cookpad.com/id/resep/907965-soto-betawi-gampang-banget',
    '1. Untuk taburan Kue Klepon : Rebus air di dalam dandang hingga mendidih, lalu siapkan kelapa parut di tambah dengan garam halus dan 2 lembar daun pandan. Kukus kelapa parut untuk taburan ini sekitar 10 menit\n \n selenngkapnya bisa di : https://craftlog.com/id/memasak/ext-cara-membuat-kue-klepon-yang-lembut-dan-enak-3pm53',

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: judul.length,
        itemBuilder: (BuildContext contex, int index) {
          final title = judul[index].toString();
          final subTitle = subjudul[index].toString();
          final jmlah = jmlh[index].toString();
          final img = gambar[index].toString();
          final resep = bahanbahan[index].toString();
          final listresep = listbahan[index].toString();
          final listresep2 = listbahan2[index].toString();

          return Container(
            height: 200,
            padding: EdgeInsets.all(8),
            child: GestureDetector(
              child: Stack(
                children: <Widget>[
                  backgroundImage(img),
                  Container(
                    child: topContent(title, subTitle, jmlah, resep, listresep,
                        listresep2, ),
                  )
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(
                              itemJudul: title,
                              itemSub: subTitle,
                              qty: jmlah,
                              itemImage: img,
                              itembahan: resep,
                              listbahan: listresep,
                              listbahan2: listresep2,

                            )));
              },
            ),
          );
        },
      ),
    );
  }

  backgroundImage(String gambar) {
    return new Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.luminosity),
                image: AssetImage(gambar))));
  }

  topContent(String nama, String deskripsi, String stok, String resep,
      String listresep, String listresep2, ) {
    return new Container(
      //height: 80.0,
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            nama,
            style: bigHeaderTextStyle,
          ),
          Text(
            deskripsi,
            style: descTextStyle,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          Container(
            height: 2,
            width: 80,
            color: Colors.redAccent,
          ),
          Text(
            stok,
            style: descTextStyle,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
