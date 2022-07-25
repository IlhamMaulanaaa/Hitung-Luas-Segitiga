import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class bangun extends StatefulWidget {
  const bangun({Key? key}) : super(key: key);

  @override
  State<bangun> createState() => _bangunState();
}
double triangle(double alas, double tinggi) {
  return 0.5 * alas * tinggi;
}
class _bangunState extends State<bangun> {
  TextEditingController ctrAlas = new TextEditingController();
  TextEditingController ctrTinggi = new TextEditingController();
  TextEditingController ctrHasil = new TextEditingController();
  int id = 1;

  int luaspersegipanjang = 0;
  void hitung() {
    setState(() {
      int x = int.parse(ctrAlas.text);
      int y = int.parse(ctrTinggi.text);
      luaspersegipanjang = (0.5 * x * y) as int;
    });
  }



  @override
  Widget build(BuildContext context) {
    var white;
    return Scaffold(
      appBar: AppBar(title: Text("Menghitung Luas Segitiga"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              controller: ctrAlas,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Alas',
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              controller: ctrTinggi,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Tinggi',
              ),
            ),
            SizedBox(height: 50,),

        Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(20),
              child: Text(luaspersegipanjang.toString()),
            ),
            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: hitung,
              child: const Text("hitung"),
            ),
          ],
        ),
  ]),
    ));
  }

}


