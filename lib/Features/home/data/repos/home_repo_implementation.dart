import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../Core/errors/failures.dart';
import '../../../../Core/utils/api_services.dart';
import '../../../../Core/utils/app_apis.dart';
import '../../../../Core/utils/app_logger.dart';
import '../models/product_model.dart';
import 'home_repo.dart';

class HomeRepoImplementation extends HomeRepo {
  final ApiService apiService;

  HomeRepoImplementation({required this.apiService});
  @override
  Future<Either<Failure, List<ProductModel>>> fetchProducts() async {
    try {
      AppLogger.print('Fetching products from the API');

      // Fetch products from the API
      var response = await apiService.get(
        endpoint: AppApis.fetchProductEndpoint,
      );

      List<ProductModel> products = [];
      for (var product in response) {
        products.add(ProductModel.fromJson(product));
      }

      AppLogger.print('Products fetched successfully from the API');

      return Right(products);
    } on DioException catch (e) {
      // Handle DioException using ServerFailure.fromDioException
      AppLogger.print('DioException occurred: ${e.message}');
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      // Handle other exceptions
      AppLogger.print('Unexpected error occurred: ${e.toString()}');
      return Left(
        ServerFailure('An unexpected error occurred. Please try again later.'),
      );
    }
  }
}
