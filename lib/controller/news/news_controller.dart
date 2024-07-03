import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapp/modals/newsModals/news_channel_headline_modal.dart';
import 'package:newsapp/modals/newsModals/news_everthing.dart';

import '../../view/utils/constants/apis.dart';
class NewsController{

  Future<NewsHeadlineModals>fetchNewsChannelHeadlinesApi({String source="bbc-news"}) async{

    var uri=Uri.parse("https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=$API_KEY");

    try{
      final response=await http.get(uri);

      if(response.statusCode==200){
        var details=jsonDecode(response.body);
        return NewsHeadlineModals.fromJson(details);

      }else{
        throw Exception("error is ${response.statusCode}");
      }

    }catch(e){
      throw Exception(e.toString());


    }


  }

  Future<NewsEverythingModals>fetchNewsEverThingApi(String category) async{

    var uri=Uri.parse("https://newsapi.org/v2/everything?q=$category&apiKey=fb16f82af9eb418c8cc9559308b68622");

    try{
      final response=await http.get(uri);
      if(response.statusCode==200){
        var details=jsonDecode(response.body);
        return NewsEverythingModals.fromJson(details);

      }else{
        throw Exception("error is ${response.statusCode}");
      }

    }catch(e){
      throw Exception(e.toString());


    }


  }
}