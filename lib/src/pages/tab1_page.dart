import 'package:flutter/material.dart';
import 'package:newsapp/src/services/news_service.dart';
import 'package:newsapp/src/widgets/lista_noticias.dart';
import 'package:provider/provider.dart';


class Tab1page extends StatefulWidget {

  @override
  _Tab1pageState createState() => _Tab1pageState();
}

class _Tab1pageState extends State<Tab1page> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {

    final newsService = Provider.of<NewsService>(context);


    return Scaffold(
      body: ( newsService.headlines.length == 0 )
      ? Center(child: CircularProgressIndicator(color: Colors.red,))
      : ListaNoticias(newsService.headlines)
   );
  }

  @override
  bool get wantKeepAlive => true;
}