import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:valluu_app/screens/screen_add_car.dart';
import 'package:valluu_app/screens/screen_choices.dart';
import 'package:valluu_app/screens/screen_comprador_home.dart';
import 'package:valluu_app/screens/screen_confirmation.dart';
import 'package:valluu_app/screens/screen_detail_vist.dart';
import 'package:valluu_app/screens/screen_register.dart';
import 'package:valluu_app/screens/screen_sell_home.dart';
import 'package:valluu_app/screens/screen_mec_home.dart';
import 'package:valluu_app/screens/screen_vist.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/escolha',
      routes: {
        '/home': (context) => const HomeSellScreen(),
        '/vistoriadores': (context) => const VistScreen(),
        '/vistoriador1': (context) => const VistUm(),
        '/escolha': (context) => const ChoiceScreen(),
        '/compradorhome': (context) => const HomeCompraScreen(),
        '/vistoriadorhome': (context) => const HomeVistoScreen(),
        '/addcar': (context) => const AddCarScreen(),
        '/confirm': (context) => const ConfirmationScreen(),
        '/register': (context) => const RegisterSell(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}