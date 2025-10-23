import 'package:bread_app/screens/save_deposit/connect_bank.dart';
import 'package:bread_app/screens/save_deposit/connect_to_bank.dart';
import 'package:bread_app/screens/save_deposit/sd_next_move.dart';
import 'package:bread_app/screens/save_deposit/sd_property_goal.dart';
import 'package:bread_app/screens/save_deposit/sd_save_per_month.dart';
import 'package:bread_app/screens/select_flow.dart';
import 'package:bread_app/screens/select_flow_final_screens/credit_detail.dart';
import 'package:bread_app/screens/select_flow_two_screens/loading_screen.dart';
import 'package:bread_app/screens/onboarding_screen.dart';
import 'package:bread_app/screens/select_flow_two_screens/property_buying.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:CreditDetail(),
    );
  }
}
