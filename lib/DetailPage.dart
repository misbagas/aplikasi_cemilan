import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String itemJudul;
  final String itemSub;
  final String itemImage;
  final String qty;
  final String itembahan;
  final String listbahan;
  final String listbahan2;


  const DetailPage(
      {Key key,
      this.itemJudul,
      this.itemSub,
      this.itemImage,
      this.qty,
      this.itembahan,
      this.listbahan,
      this.listbahan2,
})
      : super(key: key);

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title:
            Text("Detail " + itemJudul, style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Center(child: Image.asset(itemImage)),
          Text(itemSub),
          Text(
            itemJudul,
            style: TextStyle(color: Colors.redAccent, fontSize: 24),
          ),
          Text(itembahan),
          Row(
            // this is new
            children: <Widget>[
              Flexible(
                // this is new
                child: Text(
                  listbahan,
                  textAlign: TextAlign.left,
                ),
              ),
              Flexible(
                // this is new
                child: Text(
                  listbahan2,
                  textAlign: TextAlign.right,
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
