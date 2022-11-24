import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmationScreen extends StatefulWidget {
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmationScreen> createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  bool light = true;

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
      body: Padding(
        padding: const EdgeInsets.only(right: 15.0, left: 15.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.lightGreen[800],
              borderRadius: BorderRadius.circular(20),
            ),
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, right: 10, left: 10, bottom: 10),
                  child: Text(
                    "Deseja falar com um avaliador?",
                    style: GoogleFonts.lato(fontSize: 18, color: Colors.white),
                  ),
                ),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/vistoriadores');
                    },
                    child: Text('Sim.')),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.red,
                      primary: Colors.white,
                      textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/home');
                    },
                    child: Text('Não.')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
