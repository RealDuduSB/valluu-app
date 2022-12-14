import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeVistoScreen extends StatefulWidget {
  const HomeVistoScreen({Key? key}) : super(key: key);

  @override
  State<HomeVistoScreen> createState() => _HomeVistoScreenState();
}

class _HomeVistoScreenState extends State<HomeVistoScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(

        title: Column(
          children: [
            Text("VALLUU", style: GoogleFonts.fahkwang(fontSize: 18, fontWeight: FontWeight.w800, fontStyle: FontStyle.italic)),
            Text("Vistoriador", style: GoogleFonts.fahkwang(fontSize: 14, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic)),

          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications))
        ],
        backgroundColor: Colors.lightGreen[800],
        shadowColor: Colors.lightGreen[800],
      ),
      drawer: Drawer(
        backgroundColor: Colors.lightGreen[100],
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.lightGreen[800]),
                accountName: Text(
                    "Nome: ",
                    style: GoogleFonts.fahkwang(
                      fontSize: 14,
                      fontWeight: FontWeight.w500, color: Colors.white,)
                ),
                accountEmail: Text(
                  "email: ",
                  style: GoogleFonts.lato(fontSize: 16),
                )),
            ListTile(
              leading: const Icon(Icons.sell_sharp, color: Colors.black),
              title: Text(
                "Lojas/ConcessionĂ¡rias",
                style: GoogleFonts.fahkwang(fontSize: 27, color: Colors.black),
              ),
              onTap: () {
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
                    "Ultimos automĂ³veis vistoriados aqui",
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
                                  "NĂ­vel de vistoria: 9/10", style: GoogleFonts.fahkwang(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white,)),
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
    );
  }
}

