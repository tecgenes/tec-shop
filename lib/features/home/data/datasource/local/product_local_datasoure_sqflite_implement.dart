import 'package:dartz/dartz.dart';
import 'package:tec_shop/core/contracts/core_local_data_source.dart';
import 'package:tec_shop/features/home/data/models/product_model.dart';

class ProductLocalDataSourceSqfLiteImplement implements CoreLocalDataSource{
  @override
  Future<Unit> cacheModel(List models) {
    // TODO: implement cacheModel
    throw UnimplementedError();
  }

  @override
  Future<List<ProductModel>> findAllCached() {
    // TODO: implement findAllCached
    throw UnimplementedError();
  }

}