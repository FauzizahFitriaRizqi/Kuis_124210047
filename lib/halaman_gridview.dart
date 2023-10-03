import 'package:flutter/material.dart';
import 'package:quiz_sic_124210047/data_buku.dart';
import 'package:quiz_sic_124210047/halaman_detail.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Data Buku'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20, left: 50, right: 50),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
          ),
          itemCount: listBuku.length,
          itemBuilder: (context, index) {
    final DataBuku buku = listBuku[index];
    return InkWell(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanDetail(buku: buku),));
    },
      child: Column(
        children: [
        Container(
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height / 2,
            child: Image.network(buku.imageLink),

          ),
          Text(buku.title, style:
          TextStyle(fontWeight: FontWeight.bold, fontSize: 15,),
          ),
      ],
    ),
    );
    }
            )
      ),
        );
  }
}

