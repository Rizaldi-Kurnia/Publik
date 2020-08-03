import 'package:flutter/material.dart';

class DetailResep extends StatelessWidget {
  final String itemJudul;
  final String itemSub;
  final String itemImage;
  final String itemHow;
  final String itemItem;
  final String itemBhan;
  final String itemCra;

  const DetailResep({
    Key key,
    this.itemJudul,
    this.itemSub,
    this.itemHow,
    this.itemItem,
    this.itemCra,
    this.itemBhan,
    this.itemImage,
  }) : super(key: key);

//membuat tanda panah kembali

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//membuat sebuah appbar atau bar dari aplikasi kita sendiri
      appBar: AppBar(
        title: Text(
          "Detail Resep",
        ),
      ),
//pengeditan data yang telah kita bawa dari banyak list
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            itemImage,
            width: 500.0,
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              itemJudul,
              style: TextStyle(color: Colors.redAccent, fontSize: 30.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              itemSub,
              style: TextStyle(fontSize: 17.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 2.0,
              width: 800.0,
              color: Colors.redAccent,
              padding: EdgeInsets.symmetric(horizontal: 90.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              itemBhan,
              style: TextStyle(color: Colors.redAccent, fontSize: 20.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              itemItem,
              style: TextStyle(fontSize: 17.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              itemCra,
              style: TextStyle(color: Colors.redAccent, fontSize: 20.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              itemHow,
              style: TextStyle(fontSize: 17.0),
            ),
          ),
        ],
      ),
    );
  }
}
