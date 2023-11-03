import 'package:flutter/material.dart';
import 'package:wewew/mainscreen.dart';
import 'package:provider/provider.dart';
import 'package:wewew/provaider/mainscreen_provaider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => MainScreenNotifier()),
  ], child: const App()));
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}
