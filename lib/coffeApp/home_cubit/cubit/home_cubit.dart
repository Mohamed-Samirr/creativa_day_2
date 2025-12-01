import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
}
class detailsCubit extends Cubit<String>{
  detailsCubit() : super('M');

  void changeSize(String size){
    emit(size);
  }

}
class orderCubit extends Cubit<int>{
  orderCubit() : super(0);

  void increment(){
    emit(state + 1);
  }
  void decrement(){
    if(state > 0){
      emit(state - 1);
    }
  }
}
class homecategoryCubit extends Cubit<String>{
  homecategoryCubit() : super('Cappuccino');

  void changeCategory(String category){
    emit(category);
  }
}
class orderTypeCubit extends Cubit<String>{
  orderTypeCubit() : super('deliver');

  void changeOrderType(String type){
    emit(type);
  }
}
