import 'package:flutter/material.dart';
import 'package:newsapp/screens/tabcontroller.dart';

import '../shared/network/remot/api_manager.dart';

class NewsTap extends StatelessWidget {
  String catId;
   NewsTap(this.catId,{super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: ApiManager.getNews(catId),

      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text("Some thing went wrong"));
        }
        var sources = snapshot.data?.sources ?? [];
        return TapControllerWidget(sources);
      }

      ,);

  }
}
