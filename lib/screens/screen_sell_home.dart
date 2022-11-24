import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSellScreen extends StatefulWidget {
  const HomeSellScreen({Key? key}) : super(key: key);

  @override
  State<HomeSellScreen> createState() => _HomeSellScreenState();
}

class _HomeSellScreenState extends State<HomeSellScreen> {
  final pageViewController = PageController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        title: Column(
          children: [
            Text("VALLUU", style: GoogleFonts.fahkwang(fontSize: 18, fontWeight: FontWeight.w800, fontStyle: FontStyle.italic)),
            Text("Vendedor", style: GoogleFonts.fahkwang(fontSize: 14, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic)),
          ],
        ),

        backgroundColor: Colors.lightGreen[800],
        shadowColor: Colors.lightGreen[800],
      ),
      drawer: Drawer(
        backgroundColor: Colors.lightGreen[100],
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                accountName: Text(
                  "Nome: {widget.user.displayName}",
                  style: GoogleFonts.lato(fontSize: 16),
                ),
                accountEmail: Text(
                  "email: {widget.user.email}",
                  style: GoogleFonts.lato(fontSize: 16),
                )),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.black),
              title: Text(
                "Vistoriadores",
                style: GoogleFonts.fahkwang(fontSize: 27, color: Colors.black),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/vistoriadores');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 15.0, left: 15.0),
        child: ListView(children: <Widget>[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Seus veículos",
                    style: GoogleFonts.lato(fontSize: 18),
                  ),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.lightGreen[800],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("CHEVROLET/Cruze", style: GoogleFonts.fahkwang(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white,)),
                                Text("Ano - 2021", style: GoogleFonts.fahkwang(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white,)),
                                Text("R\$ 90.000", style: GoogleFonts.fahkwang(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white,)),
                                Text("1 dia", style: GoogleFonts.fahkwang(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white,)),
                              ],
                            ),
                            Image.asset(
                              "assets/cruzevermelho.png",
                              width: 200,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  "Nível de vistoria: 9/10", style: GoogleFonts.fahkwang(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white,)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/addcar');
        },
        backgroundColor: Colors.lightGreen[800],
        child: const Icon(Icons.add),
      ),
    );
  }
}

