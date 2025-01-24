import 'package:dartz/dartz.dart';

import '../../../../Core/errors/failures.dart';
import '../models/product_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductModel>>> fetchProducts();
}
