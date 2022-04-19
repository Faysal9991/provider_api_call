
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/provider/apitestpro.dart';
import 'package:providerapp/screens/home_page_screen.dart';


void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomepageProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
     home: Homepage(),
    );
  }
}