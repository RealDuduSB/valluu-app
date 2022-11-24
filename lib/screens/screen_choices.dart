import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChoiceScreen extends StatefulWidget {
  const ChoiceScreen({Key? key}) : super(key: key);

  @override
  State<ChoiceScreen> createState() => _ChoiceScreenState();
}

class _ChoiceScreenState extends State<ChoiceScreen> {
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
          ],
        ),
        backgroundColor: Colors.lightGreen[800],
        shadowColor: Colors.lightGreen[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Seja bem vindo(a)!"),
            ),
            OutlinedButton(onPressed: () {
              Navigator.of(context).pushNamed('/compradorhome');
            }, child: Text("COMPRAR")),
            OutlinedButton(onPressed: () {
              Navigator.of(context).pushNamed('/register');
            }, child: Text("VENDER")),
            OutlinedButton(onPressed: () {
              Navigator.of(context).pushNamed('/vistoriadorhome');
            }, child: Text("VISTORIA")),
          ],
        ),
      ),
    );
  }
}
