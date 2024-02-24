import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                 height: MediaQuery.sizeOf(context).height*.25, 
                 width: MediaQuery.sizeOf(context).width, 
                 decoration:const BoxDecoration(
                  color:Colors.white,
                 ),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      
                      //// product pic
                      Container(
                        height: MediaQuery.sizeOf(context).height*.2, 
                        width: MediaQuery.sizeOf(context).width*.3, 
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR19cjGP2SY53ctE27kv2_zha-oFy1hfooi1GTYlTyPrQ&s"))
                        ),
                      ),
                  
                  /// texts
               Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   ///sub title
                 const  Text("Bs cosmetics",style: TextStyle(color: Color.fromARGB(255, 165, 164, 164)),),
                   
                   //// Product Title
           const     Row(
                mainAxisAlignment: MainAxisAlignment.start, 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
             Text("Couture Brush",style:TextStyle(fontSize: 11,fontWeight: FontWeight.w600),)
             ,   
            SizedBox(width: 30,),
             Icon(Icons.delete)
                
               ],),

               ///total pieces
            const     Text("st - 12 Piece"),
           const      Text("SAR 138",style: TextStyle(color: Color.fromARGB(255, 209, 207, 207)),),
             
                ///// add remove product
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const       Text("SAR 130",style: TextStyle(color: Colors.red),),
                  SizedBox(width: 30,),
                    Container(
                      height: MediaQuery.sizeOf(context).height*.1/2, 
                      width: MediaQuery.sizeOf(context).width*.25,
                      decoration: BoxDecoration(
                       // color: Colors.red,
                        border: Border.all(),
                    
                        
                        ),
                        child:const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.add),
                            
                             Icon(Icons.remove),
                          ],
                        ),
                    
                    ),
                  ],
                ),

                 ],)
                 ],),
                );
  }
}