import 'package:flutter/material.dart';
import 'package:quiz_sic_124210047/data_buku.dart';

class HalamanDetail extends StatelessWidget {
  final DataBuku buku;
  final Uri _url = Uri.parse('https://flutter.dev');
  HalamanDetail({super.key, required this.buku});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(buku.title),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.bookmark),
            onPressed: (){
              final snackBar = SnackBar(
                content: Text('Berhasil Menambahkan ke Favorit'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Text(buku.title, style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 3,
                child: Image.network(buku.imageLink),
              ),
              Container(child: Text(''),),
              Container(child: Text('Judul Buku', style: TextStyle(fontWeight: FontWeight.bold),),),
              Container(child: Text(buku.title, style: TextStyle(fontSize: 14),),),
              Container(child: Text(''),),
              Container(child: Text('Author', style: TextStyle(fontWeight: FontWeight.bold)),),
              Container(child: Text(buku.author, style: TextStyle(fontSize: 14),),),
              Container(child: Text(''),),
              //Container(child: Text('Tahun Terbit', style: TextStyle(fontWeight: FontWeight.bold)),),
              //Container(child: Text(buku.year as String, style: TextStyle(fontSize: 14),),),
              Container(child: Text('Negara', style: TextStyle(fontWeight: FontWeight.bold)),),
              Container(child: Text(buku.country, style: TextStyle(fontSize: 14),),),
              Container(child: Text(''),),
              Container(child: Text('Bahasa', style: TextStyle(fontWeight: FontWeight.bold)),),
              Container(child: Text(buku.language, style: TextStyle(fontSize: 14),),),
              //Container(child: Text('Jumlah halaman', style: TextStyle(fontWeight: FontWeight.bold)),),
              //Container(child: Text(buku.pages as String, style: TextStyle(fontSize: 14),),),
            ],
          ),
        ),
      ),
    );
  }
}