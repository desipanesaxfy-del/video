import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Pembuatan Variabel Yang Akan Dipakai
  TextEditingController inputNama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("aplikasi video"),
        backgroundColor: Color.fromARGB(0, 49, 168, 168),
      ),
      //Color.fromARGB( opacity, red, gren, blue)
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 300,
              // height: 300,
              color: Color.fromARGB(197, 220, 155, 155),
              child: TextField(
                // Dekorasi untuk Petunjuk Pengisian dan Garis
                decoration: InputDecoration(
                  hintText: 'Masukan Nama Kamu',
                  border: OutlineInputBorder(),
                ),
                // controller untuk
                controller: inputNama,
                // Ketika Dikirm nanti
                onSubmitted: (values) {
                  // isi 
                  inputNama.text = values;
                },
              ),
            ),
          ),
          ElevatedButton(
            child: Text("Tampilkan Nama"),
            onPressed: () {
              print(inputNama.text);
            },
          ),
        ],
      ),
    );
  }
}
