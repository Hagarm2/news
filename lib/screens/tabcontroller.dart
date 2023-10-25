import 'package:flutter/material.dart';
import 'package:newsapp/screens/newscarditem.dart';
import 'package:newsapp/screens/sourceitem.dart';
import 'package:newsapp/shared/network/remot/api_manager.dart';

import '../modules/sourcemodel.dart';

class TapControllerWidget extends StatefulWidget {
  List<Sources> sourcse;

  TapControllerWidget(this.sourcse);

  @override
  State<TapControllerWidget> createState() => _TapControllerWidgetState();
}

class _TapControllerWidgetState extends State<TapControllerWidget> {
int selectedindex=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
            length: widget.sourcse.length,
            child: TabBar(
              onTap: (value) {
                selectedindex=value;
                setState(() {

                });

              },
              isScrollable: true,
              tabs: widget.sourcse
                  .map((source) => Tab(
                        child: SourceItem(source,widget.sourcse.indexOf(source)==selectedindex),
                      ))
                  .toList(),
            )),
        FutureBuilder(future: ApiManager.getNewsData(widget.sourcse[selectedindex].id??""),
          builder:(context, snapshot) {
            if(snapshot.connectionState==ConnectionState.waiting){
              return Center(child: CircularProgressIndicator());
            }
            if(snapshot.hasError){
              return Center(child: Text("Some thing went wrong"));

            }
            var newsList=snapshot.data?.articles??[];
            return Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return NewsCardItem(newsList[index]);
              },itemCount: newsList.length,),
            );
          },)
      ],
    );
  }
}
