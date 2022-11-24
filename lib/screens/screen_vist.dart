import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VistScreen extends StatefulWidget {
  const VistScreen({Key? key}) : super(key: key);

  @override
  State<VistScreen> createState() => _VistScreenState();
}

class _VistScreenState extends State<VistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        title: Column(
          children: [
            Text("VALLUU", style: GoogleFonts.fahkwang(fontSize: 18, fontWeight: FontWeight.w800, fontStyle: FontStyle.italic)),
            Text("Vendedor - Viatoriadores", style: GoogleFonts.fahkwang(fontSize: 14, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic)),
          ],
        ),

        backgroundColor: Colors.lightGreen[800],
        shadowColor: Colors.lightGreen[800],
      ),
      body: ListView(
        padding: EdgeInsets.only(right: 15, left: 15),
        children: [
          ListTile(
            leading: Container(
              color: Colors.lightGreen[100],
              child: Image.asset("assets/person.png", width: 40, height: 40,),
            ),
            title: Text(
              "Auto Center & Mecanica Anchieta",
              style: GoogleFonts.fahkwang(fontSize: 25, color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/vistoriador1');
            },
          ),
        ],
      ),
    );
  }
}
