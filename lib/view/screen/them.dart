// import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:newsapp/view/utils/app_widget/app_widget.dart';
// import 'package:newsapp/view/utils/colors.dart';
// import 'package:newsapp/view/utils/theme/dark.dart';
//
// import '../utils/theme/light.dart';
//
//
// class ThemeScreen extends StatefulWidget {
//   const ThemeScreen({super.key});
//
//   @override
//   State<ThemeScreen> createState() => _ThemeScreenState();
// }
//
// class _ThemeScreenState extends State<ThemeScreen> {
//
//   bool _isDarkTheme=false;
//
//   @override
//   Widget build(BuildContext context) {
//
//     var view=AppWidgets(context);
//     return MaterialApp(
//    debugShowCheckedModeBanner: false,
//       home: Scaffold(
//          appBar: AppBar(
//            leading: Icon(Icons.arrow_back_ios_new),
//            title: Text("Flutter Theme Demo"),
//            actions: [
//              Switch(
//                  value: _isDarkTheme, onChanged: (value) {
//                    setState(() {
//                      _isDarkTheme=value;
//                    });
//
//                  },
//              )
//
//            ],
//          ),
//
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//              Card(
//                child: TextField(
//                  decoration: InputDecoration(
//                    border:  OutlineInputBorder(
//                       borderSide: BorderSide.none,
//                        borderRadius: BorderRadius.circular(20)),
//                    prefixIcon: Icon(Icons.search_rounded),
//                    hintText: "Search..."
//
//                  ),
//                ),
//              ),
//               ListTile(
//                 title: Center(child: Text("Akash kumar")),
//                 subtitle: Center(child: Text("Appilacation Devloper")),
//
//                 leading: CircleAvatar(
//                   radius: 30,
//                   foregroundImage: AssetImage("asset/images/Image.png"),
//
//                 ),
//
//                 trailing: Icon(Icons.qr_code_scanner),
//               ),
//
//               Padding(
//                 padding: const EdgeInsets.all(30.0),
//                 child: Container(
//                   width: double.infinity,
//                   height: 300,
//                   child: Column(
//                     children: [
//
//                       optionMenuRow(
//                         data: "person",
//                        iconData: Icons.person
//                       ) ,
//                       optionMenuRow(
//                         data: "Notification",
//                        iconData: Icons.notification_important_rounded
//                       ),
//                       optionMenuRow(
//                         data: "Security",
//                        iconData: Icons.security
//                       ),
//                       optionMenuRow(
//                         data: "Privacy",
//                        iconData: Icons.remove_red_eye_outlined
//                       ),    optionMenuRow(
//                         data: "Help",
//                        iconData: Icons.help
//                       ),
//
//
//
//                     ],
//                   ),
//                 ),
//               ),
//               Center(
//                 child: Container(
//                   decoration: BoxDecoration(
//                    color: Colors.lightBlue,
//                       borderRadius: BorderRadius.circular(30)),
//                     width: 700,
//                      height: 120,
//                    child: Column(
//                      children: [
//                        Text("Become Premium User",style: TextStyle(fontWeight: FontWeight.bold),),
//                        Padding(
//                          padding: const EdgeInsets.all(8.0),
//                          child: Container(
//                            decoration: BoxDecoration(
//                              gradient: appBackgroundColors
//                            ),
//                              width: 400,
//                              height: 60,
//                              child: ElevatedButton(
//                                style: ButtonStyle(
//                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                                    RoundedRectangleBorder(
//                                      borderRadius: BorderRadius.circular(10), // Adjust the value as needed
//                                    ),
//                                  ),
//                                ),
//                                onPressed: () {
//
//                                },
//                                child: Text("dfghjkl;'"),
//                              )
//                          ),
//                        )
//
//                      ],
//                    ),
//                 ),
//               )
//
//
//
//
//             ],
//           ),
//         ),
//
//
//
//       ),
//       theme: _isDarkTheme ? lightThem : darkTheme,
//
//     );
//   }
//
//   optionMenuRow({String data="",IconData? iconData}){
//
//     return Row(
//       children: [
//         Icon(iconData,size: 40,),
//         SizedBox(height: 50,),
//         SizedBox(width: 20,),
//         Text(data,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
//
//       ],
//     );
//
//   }
//
//
// }
