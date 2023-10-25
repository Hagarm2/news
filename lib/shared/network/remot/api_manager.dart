import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:newsapp/modules/NewsResponce.dart';
import 'package:newsapp/modules/sourcemodel.dart';
import 'package:newsapp/shared/components/constants.dart';

class ApiManager {
 static Future<SourceModel>getNews(String catId) async{
    Uri url = Uri.https(BASE_URL, "/v2/top-headlines/sources",
        {"apiKey": API_KEY,
          "category":catId});
    
    Response response=await http.get(url);
    var jsonData=jsonDecode(response.body);
    SourceModel data=SourceModel.fromJson(jsonData);
    return data;
  }
  static Future<NewsResponce> getNewsData(String sourceID)async{
   Uri url=Uri.https(BASE_URL,"/v2/everything/",{
     "apiKey": API_KEY,
     "sources":sourceID,
   });
   http.Response response=await http.get(url);
   var jsondata =jsonDecode(response.body);
   NewsResponce newsResponce=NewsResponce.fromJson(jsondata);
   return newsResponce;
  }
}