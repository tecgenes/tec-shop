import 'package:tec_shop/features/home/domain/repositories/product_repository.dart';
import 'package:tec_shop/core/contracts/core_repository.dart';
import 'package:tec_shop/core/contracts/core_usecase.dart';

class GetAllProductUsecase extends CoreUsecase{
  @override
  CoreRepository get repository => ProductRepository();

  call() async{
    return await repository.findAll();
  }
}