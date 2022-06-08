import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tab/components/tile.dart';
// import 'package:tab/components/tile.dart';
import 'package:tab/main.dart';
import 'package:tab/model/model.dart';
import 'package:tab/screens/sch_details_page.dart';
// import 'package:tab/services/api_services.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {

  late Model model;


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.maybeOf(context)!.size;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF262AAA),
        title: const Text("Favorites"),
        centerTitle: true,
      ),

      body: favoriteDataList.isEmpty ? const Center(
        child: Text(
          'There are no favorites yet!',
          style: TextStyle(color: Colors.black),
        ),
        )
    : ListView.builder(
      itemCount: favoriteDataList.length,
        itemBuilder: (BuildContext context, index) {
          return tile( favoriteDataList[index], context);


  //         return GestureDetector(
  //           onTap: () {
  //             Navigator.push(
  //               context,
  //               MaterialPageRoute(
  //                 builder: (context) => DetailsPage(
  //                   model: model,
  //                 )
  //               ),
  //             );
  //           },

  //   child: Container(
  //     width: 20,
  //     margin: const EdgeInsets.fromLTRB(12.0, 12.0, 20.0, 12.0),
  //     padding: const EdgeInsets.all(8.0),
  //     decoration: BoxDecoration(
  //       color: Colors.white,
  //       borderRadius: BorderRadius.circular(25.0),
  //       boxShadow: const [
  //         BoxShadow(
  //           color: Colors.black12,
  //           blurRadius: 3.0
  //         ),
  //       ],
  //     ),
  
  //     child: Row(
  //       children: [  
  //         Container(
  //           height: 100.0,
  //           width: screenSize.width *0.12,
  //           // width: 50.0,
  //           decoration: BoxDecoration(
  //             shape: BoxShape.circle,
  //             image: DecorationImage(
  //               image: NetworkImage(model.image),
  //               fit: BoxFit.contain,
  //             ),
  //           ),
  //         ),
  
  //         const SizedBox(width: 20.0,),
    
  //         Column(
            
  //           children: [
  //             Container(
  //               // width: 200.0,
  //               width: screenSize.width *0.5,
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(30.0)
  //               ),
  //               child: Text(
  //                 model.title,
  //                 overflow: TextOverflow.ellipsis,
  //                 style: const TextStyle(
  //                   fontWeight: FontWeight.w500,
  //                   fontSize: 15.0
  //                 ),
  //               ),
  //             ),
  
  //             const SizedBox(height: 25.0,),
  
  //             Container(
  //               width: 200.0,
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(30.0)
  //               ),
  //               child: Text(
  //                 model.deadline,
  //                 style: const TextStyle(
  //                   fontWeight: FontWeight.w300,
  //                   fontSize: 15.0,
  //                   color: Colors.red
  //                 ), 
  //               ),
  //             ),
  //           ], 
  //         ),
  
  //         const SizedBox(width: 20.0,),
   
  //         Center(
  //           child: Container(
  //             child: Icon(
  //               Icons.arrow_forward_ios,
  //               color: Colors.grey[700],
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   ),
  // );
        }
    )



      // Container(
      //   child: ValueListenableBuilder(
      //     valueListenable: Hive.box(Fav).listenable(),
      //     builder: (BuildContext context, box, index) {
      //       List<Model>? models = box as List<Model>?;
      //       return tile(models![index], context);
      //     }
      //   ),
      // ),


        
        // ValueListenableBuilder(
        //   key: UniqueKey(),
        //   valueListenable: Hive.box(Fav).listenable(),
        //   builder: (BuildContext context, box, child) {
        //     List<Model>? models = List.from(box.values);
        //     return Scrollbar(
        //       thumbVisibility: true,
        //       thickness: 8.0,
        //       interactive: true,
        //       radius: Radius.circular(20),
        //       child: ListView.builder(
        //         itemCount: models.length,
        //         itemBuilder: (BuildContext context, index) { 
        //           return tile( models[index], context ); 
        //         }
        //       ),
        //     );
        //   },
        //     child: const Center(
        //       child: Text("No favorites yet")
        //     ),
        // ) 
    );
  }
}

































// import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:tab/model/model.dart';

// class Favorites extends StatefulWidget {
//   @override
//   State<Favorites> createState() => _FavoritesState();
// }

// class _FavoritesState extends State<Favorites> {
//   var posts;
//   @override
//   void initState() {
//     super.initState();
//     posts = Hive.box<Model>('Fav').values.toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         scrollDirection: Axis.vertical,
//         itemBuilder: (context, index) {
//           return Stack(
//             children: [
//               Card(
//                 child: Image.network(
//                   posts[index].image!,
//                 ),
//               ),
//               Positioned(
//                 right: 0,
//                 child: InkWell(
//                   child: IconButton(
//                     onPressed: () async {
//                       await Hive.box<Model>('favorites_box')
//                           .delete(posts[index]);
//                     },
//                     icon: Icon(
//                       Icons.favorite_rounded,
//                       color: Colors.red,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           );
//         },
//         itemCount: posts == null ? 0 : posts.length,
//       ),
//     );
//   }
// }