import 'package:e_commerceui/ViewModels/homeViewModel.dart';
import 'package:e_commerceui/componants/productView.dart';
import 'package:e_commerceui/componants/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: ()=>HomeViewModel(), 
      builder:  (context,ViewController,child){
        return  Scaffold(
          body: Padding(
            padding:const EdgeInsets.only(top:40,left: 20,right:20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
                ///txt + icon
              const  Txt(),

                /////Product ListView
               

                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context,index){
                    return Card(
                      child:  ProductView(),
                    );
                  })
               
              ],
            ),
          ),
        );
      });
  }
}