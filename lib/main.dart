import 'package:flutter/material.dart';
import 'package:newsapp/src/pages/tabs_pages.dart';
import 'package:newsapp/src/services/news_service.dart';
import 'package:newsapp/src/theme/tema.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NewsService()),
      ],
      child: MaterialApp(
        title: 'Material App',
        theme: ThemeData.dark().copyWith(accentColor: Colors.red),
        debugShowCheckedModeBanner: false,
        home: TabsPage()
      ),
    );
  }
}