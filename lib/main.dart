import 'package:aplikasi_cemilan/DetailPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: ResepMakanan()));

class ResepMakanan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "Resep Makanan",
          style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      body: _PageList(),
    );
  }
}

//for set up all text
final baseTextStyle = const TextStyle(color: Colors.white, fontFamily: "arial");
//for set up the name
final bigHeaderTextStyle =
    baseTextStyle.copyWith(fontSize: 25.0, fontWeight: FontWeight.bold);
//for set up all the deskripsi
final descTextStyle = baseTextStyle.copyWith(fontSize: 15.0);

// class LisPage
class _PageList extends StatefulWidget {
  @override
  __PageStateListState createState() => __PageStateListState();
}

class __PageStateListState extends State<_PageList> {
//Nama Judul dari makanan
  List<String> nama = [
    "Nasi Goreng",
    "Soto Lamongan",
    "Soto Babat",
    "Pecel Lele",
    "Bakso",
    "Mie Ayam",
    "Rendang",
    "Sate",
    "Klepon",
    "Mie Aceh",
  ];

//Deskripsi makanan
  List<String> subnama = [
    "Sebuah Nasi Yang Di Goreng, Bukan Di Bakar",
    "Sebuah Soto Yang Berasal Dari Kota Lamongan",
    "Sebuah Soto Yang Di Dalamnya Ada Sayuran dan Babat",
    "Sebuah Pecel Yang Di Dalamnya ada Lele dan Lalapan",
    "Sebuah Daging Yang Di Giling Dan Di Bentuk Seperti Bola'",
    "Sebuah Mie Yang Di Campur Dengan Bumbu,Sayuran,Dan Ayam",
    "Sebuah Daging Sapi Yang Di Iris Dan Di Masak Dengan Bumbu",
    "Sebuah Daging Ayam / Kambing Yang Di Tusuk Dan Di Bakar",
    "Sebuah Klepon Sejenis makanan tradisional yang termasuk jajanan pasar",
    "Sebuah Mie Yang Berasal Dari Aceh Dan Di Masak Dengan Bumbu",
  ];

//gambar makanan
//panggil nama derectory yang kalian nama kan
  List<String> gambar = [
//contoh nama derectory saya adalah "assets/images" maka saya tulis di dalam string nya yaitu assets/images
    "assets/images/nasgor.jpeg",
    "assets/images/sotolamongan.jpg",
    "assets/images/sotobabat.jpeg",
    "assets/images/pecellele.jpeg",
    "assets/images/bakso.jpeg",
    "assets/images/mieayam.jpg",
    "assets/images/rendang.jpeg",
    "assets/images/sate.jpeg",
    "assets/images/klepon.jpeg",
    "assets/images/mieaceh.jpg",
  ];

//hati hati jika memberi data pada string karena jumlahnya tidak boleh kurang atau lebih dari yang lain

  List<String> bhan = [
    'Bahan - Bahan :',
    'Bahan - Bahan :',
    'Bahan - Bahan :',
    'Bahan - Bahan :',
    'Bahan - Bahan :',
    'Bahan - Bahan :',
    'Bahan - Bahan :',
    'Bahan - Bahan :',
    'Bahan - Bahan :',
    'Bahan - Bahan :',
  ];

  List<String> bahan = [
    "- Nasi\n- Minyak Secukupnya\n- Bawang Merah 2\n- Bawang putih 4\n- DLL\n",
    "- Ayam Suir\n- Bumbu Soto 3SDM\n- Bihun\n- Telur 2 Butir\n- Air Secukupnya\n- DLL\n",
    "- Babat\n- Bumbu Soto 3SDM\n- Telur 2 Butir\n- Daun Bawang\n- DLL\n",
    "- Lele\n- Lalapan\n- Bumbu Ikan Goreng\n- Minyak Goreng\n- DLL\n",
    "- Bakso Daging/ Ayam\n- Bumbu Bakso Instant\n- Mie Kuning/ Putih\n- Bawang Goreng\n- DLL\n",
    "- Mie\n- Ayam\n- Sayuran\n- Bumbu Mie Ayam\n- Air Satu Panci\n- DLL",
    "- Daging Potong\n- Bumbu Rendang\n- Air Secukuonya\n- DLL\n",
    "- Daging Ayam/ Kambing\n- Kecap\n- Bumbu Kacang\n- Air Secukupnya\n- DLL\n",
    "- Kelapa\n- Tepung\n- Gula Jawa\n- Air Hangat Secukupnya\n- DLL\n",
    "- Mie Aceh\n- Bumbu Mie Aceh\n- Bawang Goreng\n- Timun Potong\n- DLL\n",
  ];

  List<String> cra = [
    'Cara Memasak :',
    'Cara Memasak :',
    'Cara Memasak :',
    'Cara Memasak :',
    'Cara Memasak :',
    'Cara Memasak :',
    'Cara Memasak :',
    'Cara Memasak :',
    'Cara Memasak :',
    'Cara Memasak :',
  ];

  List<String> cara = [
    "- Panaskan Minyak\n- Masukan Bawang Merah & Bawang Putih\n- Aduk Hingga Harum\n- Masukan Nasi\n- DLL\n",
    "- Masukan Air Ke Dalam Panci\n- Panaskan Air Hingga Mendidih\n- Masukan Bumbu Soto\n- Masukan Bihun & Ayam\n- DLL\n",
    "- Rebus Babat Dengan Air\n- Masukan Bumbu Soto \n- Rebus Telur\n- Taburi Daun Bawang\n- DLL\n",
    "- Panaskan Minyak\n- Siapkan Lele\n- Campurkan Bumbu Ikan Goreng\n- Cmpurkan Dengan Lalapan\n- DLL\n",
    "- Rebus Bakso Dengan Air\n- Masukan Bumbu Bakso Instant\n- Campurkan Mie\n- Cmapurkan Bawang Goreng\n- DLL\n",
    "- Rebus Air Hingga Mendidih\n- Mauskan Mie\n- Cmpurkan Bumbu Mie\n- Masukan Ayam\n- DLL\n",
    "- Siapkan Daging Potong\n- Masukan Air\n- Campur Dengan Bumbu Rendang\n- DLL\n",
    "- Tusuk Daging Menggunakan Tusuk Sate\n- Campurkan Dengan Bumbu Kacang\n- Campurkan Air Secukupnya\n- Tambahkan Kecap\n- DLL\n",
    "- Masukan Air Hangat\n- Campurkan Gula Jawa Dan Tepung\n- Tambahkan Kelapa\n- DLL\n",
    "- Masukan Mie Aceh\n- Campurkan Dengan Bumbu\n- Sedikit Bawang Goreng\n- Beberapa Timun Potong\n- DLL\n",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
//untuk istilah penamaan pada Stringnya
//masih masih tidak boleh sama dengan istilah lain dan nama string
        itemCount: nama.length,
        itemBuilder: (BuildContext context, int index) {
//contoh jika nama string adalah "nama" maka istilah tidak boleh nama
          final titel = nama[index].toString();
          final deskrip = subnama[index].toString();
          final img = gambar[index].toString();
          final cr = cara[index].toString();
          final bhn = bahan[index].toString();
          final car = cra[index].toString();
          final bah = bhan[index].toString();
          return Container(
            height: 200.0,
//for padding from card to card
            padding: EdgeInsets.all(5.0),
            child: GestureDetector(
              child: Stack(
                children: <Widget>[
//data yang di bawa pada list muncul
                  backgroundImage(img),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: topContent(titel, deskrip),
                    ),
                  ),
                ],
              ),
//keti salah satu item dari list makan akan maka akan mengirim data yang kalian buat
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailResep(
//item yang akan kita bawa ketika kita mengklik salah satu dari list view
                              itemJudul: titel,
                              itemSub: deskrip,
                              itemItem: bhn,
                              itemHow: cr,
                              itemImage: img,
                              itemBhan: bah,
                              itemCra: car,
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
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.luminosity),
            image: AssetImage(gambar)),
      ),
    );
  }

  topContent(String nama, String deskripsi) {
    return new Container(
// height: 80.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            nama,
            style: bigHeaderTextStyle,
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 2.0,
            width: 200.0,
            color: Colors.redAccent,
            padding: EdgeInsets.symmetric(horizontal: 90.0),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            deskripsi,
            style: descTextStyle,
          ),
        ],
      ),
    );
  }
}
