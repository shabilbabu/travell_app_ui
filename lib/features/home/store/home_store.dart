import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store{
  
  @observable
  int iconIndex = 0;

  @action
  void changeIconIndex(int index){
    iconIndex = index;
  }


  @observable
  int textIndex = 0;

  @action
  void changeTextIndex(int index){
    textIndex = index;
  } 
}