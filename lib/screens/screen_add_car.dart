import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCarScreen extends StatefulWidget {
  const AddCarScreen({Key? key}) : super(key: key);

  @override
  State<AddCarScreen> createState() => _AddCarScreenState();
}

class _AddCarScreenState extends State<AddCarScreen> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("2023"), value: ""),
      DropdownMenuItem(child: Text("2022"), value: ""),
      DropdownMenuItem(child: Text("2021"), value: ""),
      DropdownMenuItem(child: Text("2020"), value: ""),
      DropdownMenuItem(child: Text("2019"), value: ""),
      DropdownMenuItem(child: Text("2018"), value: ""),
      DropdownMenuItem(child: Text("2017"), value: ""),
      DropdownMenuItem(child: Text("2016"), value: ""),
      DropdownMenuItem(child: Text("2015"), value: ""),
      DropdownMenuItem(child: Text("2014"), value: ""),
      DropdownMenuItem(child: Text("2013"), value: ""),
      DropdownMenuItem(child: Text("2012"), value: ""),
      DropdownMenuItem(child: Text("2011"), value: ""),
      DropdownMenuItem(child: Text("2010"), value: ""),
      DropdownMenuItem(child: Text("2009"), value: ""),
      DropdownMenuItem(child: Text("2008"), value: ""),
      DropdownMenuItem(child: Text("2007"), value: ""),
      DropdownMenuItem(child: Text("2006"), value: ""),
      DropdownMenuItem(child: Text("2005"), value: ""),
      DropdownMenuItem(child: Text("2004"), value: ""),
      DropdownMenuItem(child: Text("2003"), value: ""),
      DropdownMenuItem(child: Text("2002"), value: ""),
      DropdownMenuItem(child: Text("2001"), value: ""),
      DropdownMenuItem(child: Text("2000"), value: ""),
      DropdownMenuItem(child: Text("1999"), value: ""),
      DropdownMenuItem(child: Text("1998"), value: ""),
      DropdownMenuItem(child: Text("1997"), value: ""),
      DropdownMenuItem(child: Text("1996"), value: ""),
      DropdownMenuItem(child: Text("1995"), value: ""),
      DropdownMenuItem(child: Text("1994"), value: ""),
      DropdownMenuItem(child: Text("1993"), value: ""),
      DropdownMenuItem(child: Text("1992"), value: ""),
      DropdownMenuItem(child: Text("1991"), value: ""),
      DropdownMenuItem(child: Text("1990"), value: ""),
      DropdownMenuItem(child: Text("1989"), value: ""),
    ];
    return menuItems;
  }

  String selectedValue = "2023";

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
        padding:
            const EdgeInsets.only(right: 15.0, left: 15.0, top: 15, bottom: 15),
        child: ListView(children: <Widget>[
          Column(
            children: [
              const Icon(
                Icons.add_a_photo,
                color: Colors.black,
                size: 50,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Ano do modelo',
                  labelStyle: GoogleFonts.fahkwang(
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                  hintText: 'EX: 2023',
                  hintStyle: GoogleFonts.fahkwang(
                      fontWeight: FontWeight.w800, fontStyle: FontStyle.italic),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFF005600),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFF005600),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: const EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Marca',
                  labelStyle: GoogleFonts.fahkwang(
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                  hintText: 'EX: Hyundai',
                  hintStyle: GoogleFonts.fahkwang(
                      fontWeight: FontWeight.w800, fontStyle: FontStyle.italic),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFF005600),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFF005600),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Modelo',
                  labelStyle: GoogleFonts.fahkwang(
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                  hintText: 'EX: HB20',
                  hintStyle: GoogleFonts.fahkwang(
                      fontWeight: FontWeight.w800, fontStyle: FontStyle.italic),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFF005600),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFF005600),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixText: 'R\$ ',
                  labelText: 'Valor',
                  labelStyle: GoogleFonts.fahkwang(
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                  hintText: '0,0 ',
                  hintStyle: GoogleFonts.fahkwang(
                      fontWeight: FontWeight.w800, fontStyle: FontStyle.italic),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFF005600),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFF005600),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Cor do veículo',
                  labelStyle: GoogleFonts.fahkwang(
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                  hintText: 'EX: Branco',
                  hintStyle: GoogleFonts.fahkwang(
                      fontWeight: FontWeight.w800, fontStyle: FontStyle.italic),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFF005600),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFF005600),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Placa',
                  labelStyle: GoogleFonts.fahkwang(
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                  hintText: 'EX: 000-0000',
                  hintStyle: GoogleFonts.fahkwang(
                      fontWeight: FontWeight.w800, fontStyle: FontStyle.italic),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFF005600),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFF005600),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/confirm');
                },
                child: Text("Continuar"),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
