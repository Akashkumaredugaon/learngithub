import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:newsapp/controller/news/news_controller.dart';
import 'package:newsapp/view/screen/category/Category_widget.dart';
import 'package:newsapp/view/screen/category/category_screen.dart';
import 'package:newsapp/view/screen/home/home_widget.dart';
import 'package:newsapp/view/utils/size.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

enum FilterList{
  bbcNew,aryNews,independent,reuters,cnn
}

String name="";
class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {

    var view=HomeWidget();
    FilterList? selectedMenu;

    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton<FilterList>(

            onSelected: (value) {
              setState(() {});
              if(FilterList.bbcNew.name==value.name){
                name=="bbcNew";
              }else if(FilterList.independent.name==value.name){
                name=="independent";

              }else if(FilterList.cnn.name==value.name){
                name=="cnn";
              }else if(FilterList.reuters.name==value.name){
                name=="reuters";
              }
            },
            initialValue: selectedMenu,
            icon: Icon(Icons.more_vert),
            itemBuilder: (context) {
             return [
               PopupMenuItem(
                value: FilterList.bbcNew,
                child: Text("bbcNew")
            ),
               PopupMenuItem(
                value: FilterList.aryNews,
                child: Text("aryNews")
            ),
               PopupMenuItem(
                value: FilterList.cnn,
                child: Text("cnn")
            ),
               PopupMenuItem(
                value: FilterList.independent,
                child: Text("independent")
            ),
               PopupMenuItem(
                value: FilterList.reuters,
                child: Text("reuters")
            ),

             ];

          },)
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CategoryScreen(),));

          },
          icon: Icon(Icons.menu),

        ),
        title: Text("NEWS",style: TextStyle(fontWeight: FontWeight.bold),),

      ),
      body: Column(
        children: [
          Expanded(child: view.futureBuilderView(context)),
          Expanded(child: view.aboutView(category:name.toString()))


        ],
      ),

    );


  }
}
