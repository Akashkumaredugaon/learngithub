import 'package:flutter/material.dart';
import 'package:newsapp/view/screen/category/Category_widget.dart';
import 'package:newsapp/view/screen/home/home_screen.dart';
import 'package:newsapp/view/utils/size.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {


  @override
  Widget build(BuildContext context) {

    String searchText = '';

    setState(() {});
    return Scaffold(
      appBar: AppBar(
         leading: IconButton(
           onPressed: () {

             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));

           },
             icon:Icon(Icons.arrow_back_ios_new),


         ),

        title: TextField(
          onChanged: (value) {
            setState(() {
              searchText = value.toLowerCase(); // Update search text
            });
          },
          decoration: InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
          ),
        ),
      ),
      body:SafeArea(
        child: Column(
          children: [

            Expanded(
                child:CategoryWidget(),
            ),


          ],
        ),
      ),
    );
  }
}
