import 'package:flutter/material.dart';
import 'package:tab/screens/about.dart';

class SideBar extends StatelessWidget {
  const SideBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15,),
      // color: Colors.pink,
      child: Column(
        children: [
          menuItem(),
        ],
      ),
    );
  }
}


Widget menuItem(){
  return Material(
    child: InkWell(
      onTap: (){
        // Navigator.push(context, MaterialPageRoute(builder: (context)=> const About()));
        // Navigator.of(contextpush(BuildContext context, MaterialPageRoute(builder: (context) => About()));
      },
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          children: const [
            Expanded(
              child: Icon(
                Icons.dashboard_outlined,
                size: 20,
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                "Dashboard",
                style: TextStyle(
                  color: Colors.black,
                  fontSize:16,
                )
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

