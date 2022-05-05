import 'package:flutter/material.dart';
import 'package:tab/model/model.dart';
import 'package:tab/screens/favorite.dart';
import 'package:tab/screens/sch_details_page.dart';


Widget tile(Model model, BuildContext context) {

  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsPage(
            model: model
          )
        ),
      );
    },

    child: Container(
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3.0
          ),
        ],
      ),
  
      child: Row(
        children: [  
          Container(
            height: 100.0,
            width: 50.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(model.image),
                fit: BoxFit.contain,
              ),
            ),
          ),
  
          const SizedBox(width: 20.0,),
    
          Column(
            
            children: [
              Container(
                width: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0)
                ),
                child: Text(
                  model.title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0
                  ),
                ),
              ),
  
              const SizedBox(height: 25.0,),
  
              Container(
                width: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0)
                ),
                child: Text(
                  model.deadline,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15.0,
                    color: Colors.red
                  ), 
                ),
              ),
            ], 
          ),
  
          const SizedBox(width: 20.0,),
   
          Center(
            child: Container(
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey[700],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}




