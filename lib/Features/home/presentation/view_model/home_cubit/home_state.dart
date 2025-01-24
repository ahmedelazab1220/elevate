part of 'home_cubit.dart';

abstract class HomeState {}

final class HomeInitialState extends HomeState {}

final class ProductLoadingState extends HomeState {}

final class ProductLoadedState extends HomeState {
  final List<ProductModel> products;

  ProductLoadedState({
    required this.products,
  });
}

final class ProductLoadedFailureState extends HomeState {
  final String message;

  ProductLoadedFailureState({
    required this.message,
  });
}
