import 'package:bloc/bloc.dart';

import '../../../data/models/product_model.dart';
import '../../../data/repos/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.homeRepo}) : super(HomeInitialState());

  final HomeRepo homeRepo;

  Future<void> fetchProducts() async {
    emit(ProductLoadingState());
    final result = await homeRepo.fetchProducts();
    result.fold((l) {
      emit(ProductLoadedFailureState(message: l.errorMessage));
    }, (r) {
      emit(ProductLoadedState(products: r));
    });
  }
}
