import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCompraScreen extends StatefulWidget {
  const HomeCompraScreen({Key? key}) : super(key: key);

  @override
  State<HomeCompraScreen> createState() => _HomeCompraScreenState();
}

class _HomeCompraScreenState extends State<HomeCompraScreen> {
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
        child: ListView(children: <Widget>[
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "mercosul",
                    style: GoogleFonts.fahkwang(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.italic),
                  ),
                  Switch(
                    // This bool value toggles the switch.
                    value: light,
                    activeColor: Colors.red,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        light = value;
                      });
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextField(
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      hintText: "BUSCAR VEÍCULO POR PLACA",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
