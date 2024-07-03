import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:newsapp/controller/news/news_controller.dart';
import '../../utils/size.dart';

class CategoryWidget extends StatefulWidget {


  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  String categoryName = "businessen"; // Default category

  @override
  Widget build(BuildContext context) {
    List<String> categoryItems = ["businessen", "entertainment", "general", "health", "science", "sports", "technology"];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: AppSize(context).height / 11,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoryItems.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      categoryName = categoryItems[index];
                    });
                  },
                  child: Chip(
                    backgroundColor: categoryName == categoryItems[index] ? Colors.blueAccent : Colors.grey, // Highlight selected category
                    label: Text(categoryItems[index]),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: aboutView(category: categoryName),
        ),
      ],
    );
  }

  Widget aboutView({String category = ''}) {
    return FutureBuilder(
      future: NewsController().fetchNewsEverThingApi(category),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: SpinKitCircle(
              size: 50,
              color: Colors.blueGrey,
            ),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error fetching data: ${snapshot.error}'),
          );
        } else {
          return ListView.builder(
            itemCount: snapshot.data?.articles?.length ?? 0,
            itemBuilder: (context, index) {
              var data = snapshot.data?.articles;
              String imageUrl = data![index].urlToImage?.toString() ?? '';
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: CachedNetworkImage(
                              width: AppSize(context).width / 2,
                              height: AppSize(context).height / 5,
                              imageUrl: imageUrl,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => SpinKitCircle(size: 40, color: Colors.blueGrey,),
                              errorWidget: (context, url, error) => Icon(Icons.error_outline, color: Colors.red,),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            data[index].description?.toString() ?? '',
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
