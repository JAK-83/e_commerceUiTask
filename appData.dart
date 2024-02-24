
import 'package:e_commerceui/View/homeView.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(  
  routes:[
    MaterialRoute(page:HomeView,initial:true)
   
  ],
  dependencies:[
    Singleton(classType:NavigationService),
    
  ]
)
class app{} 