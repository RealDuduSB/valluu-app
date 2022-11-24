import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valluu_app/screens/screen_sell_home.dart';
import 'screen_sell_home.dart';

import '../controller/register_controller.dart';

class RegisterSell extends StatefulWidget {
  const RegisterSell({Key? key}) : super(key: key);

  @override
  State<RegisterSell> createState() => _RegisterSellState();
}

class _RegisterSellState extends State<RegisterSell> {
  final _controller = RegisterController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Colors.lightGreen[100],
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _controller.formKey,
            child: Card(
              color: Colors.lightGreen[100],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: _controller.displayName,
                      validator: (String ? val) {
                        if (val!.isEmpty) {
                          return "Por favor digite o nome";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Nome',
                        labelStyle: GoogleFonts.fahkwang(
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.italic,
                            color: Colors.black),
                        hintText: 'EX: Alfredo',
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
                    const SizedBox(height: 15,),
                    TextFormField(
                      controller: _controller.emailController,
                      validator: (String ? val) {
                        if (val!.isEmpty) {
                          return "Por favor digite o email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'email',
                        labelStyle: GoogleFonts.fahkwang(
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.italic,
                            color: Colors.black),
                        hintText: 'EX: email@mail.com',
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
                    SizedBox(height: 15,),
                    TextFormField(
                      obscureText: true,
                      controller: _controller.senhaController,
                      validator: (String ? val) {
                        if (val!.isEmpty) {
                          return "Por favor digite uma senha";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        labelStyle: GoogleFonts.fahkwang(
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.italic,
                            color: Colors.black),
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
                    SizedBox(height: 10,),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: OutlinedButton(
                        onPressed: () {
                          if (_controller.formKey.currentState!.validate()) {
                            _registerAcount();
                          }
                        },
                        child: Text(
                          "REGISTRAR",
                          style:
                          GoogleFonts.lato(fontSize: 25, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _registerAcount() async {
    try {
      final User? user = (await _controller.auth.createUserWithEmailAndPassword(
          email: _controller.emailController.text,
          password: _controller.senhaController.text))
          .user;

      if (user != null) {
        if (user.emailVerified) {
          await user.sendEmailVerification();
        }
        await user.updateProfile(displayName: _controller.displayName.text);

        final user1 = _controller.auth.currentUser;
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) {
          return const HomeSellScreen();
        }));
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Erro ao efetuar o registro"),
      ));

      print(e);
    }
  }
}
