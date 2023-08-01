import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testriverpodproject/secondpage.dart';

import 'navigation_service.dart';

final homeViewModelProvider = Provider((ref) => HomeViewModel());
NavigationService service = NavigationService();
 class HomeViewModel {

  @riverpod
  class EnterPhNumber extends _$EnterPhNumber {
  @override
  String build() => "";

  void phNumber(String phonenumber) => state = phonenumber;
  }
onFirstpageButtonNavClicked(){
  NavigationService().navigateToScreen(SecondPage());
}

}