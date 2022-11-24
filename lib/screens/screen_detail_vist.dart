import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VistUm extends StatefulWidget {
  const VistUm({Key? key}) : super(key: key);

  @override
  State<VistUm> createState() => _VistUmState();
}

class _VistUmState extends State<VistUm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        title: Column(
          children: [
            Text("VALLUU",
                style: GoogleFonts.fahkwang(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic)),
            Text("Vendedor - Auto Center & Mecanica Anchieta",
                style: GoogleFonts.fahkwang(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic)),
          ],
        ),
        backgroundColor: Colors.lightGreen[800],
        shadowColor: Colors.lightGreen[800],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.person,
                  size: 20,
                ),
                Icon(Icons.share, size: 20,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: Image.asset("mapa1.png"),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15, top: 10),
            child: Row(
              children: [
                Text("4,8", style: GoogleFonts.fahkwang(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic)),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Icon(Icons.star),
                ),
                const Icon(Icons.star),
                const Icon(Icons.star),
                const Icon(Icons.star),
                const Icon(Icons.star),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
