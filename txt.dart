import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Txt extends StatelessWidget {
  const Txt({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
                  child: Row(
                    children: [
                      SizedBox(width: 70,),
                      Text("Shoping Cart",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
                    Spacer(),
                    Icon(Icons.logout_outlined,color: Colors.blue,)
                    ],
                  ),
                );
  }
}