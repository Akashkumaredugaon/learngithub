import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:newsapp/view/utils/size.dart';

import '../../../controller/news/news_controller.dart';

class HomeWidget{

  FutureBuilder  futureBuilderView(BuildContext context){
  var size=AppSize(context);
    return FutureBuilder(
      future: NewsController().fetchNewsChannelHeadlinesApi(),
      builder: (context,snapshot) {

        if(snapshot.connectionState==ConnectionState.waiting){
          return Center(
            child: SpinKitCircle(
              size: 50,
              color: Colors.blueGrey,
            ),
          );
        }else{

          return ListView.builder(
            shrinkWrap: false,
            scrollDirection: Axis.horizontal,
            itemCount: snapshot.data?.articles?.length,
            itemBuilder: (context, index) {
              return SizedBox(
                height: size.height/10,
                child: Stack(
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: SizedBox(
                        width:size.width/1.5,
                        height:size.height/2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: CachedNetworkImage(
                            imageUrl:snapshot.data!.articles![index].urlToImage.toString() ,
                            fit: BoxFit.cover,
                            placeholder: (context, url)=>SpinKitCircle(size: 40,color: Colors.blueGrey,),
                            errorWidget: (context, url, error) => Icon(Icons.error_outline,color: Colors.red,),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );

            },);
        }

      },

    );
  }

  Widget aboutView({String category = ''}) {
    return FutureBuilder(
      future: NewsController().fetchNewsChannelHeadlinesApi(source: category),
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
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
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