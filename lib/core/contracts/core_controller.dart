import 'package:get/get.dart';
import 'package:tec_shop/core/mixins/alrt_mixin.dart';
import 'package:tec_shop/core/mixins/loading_mixin.dart';
import 'package:tec_shop/core/mixins/validator_mixin.dart';

abstract class CoreController extends GetxController with ValidatorMixin, LoadingMixin, AlrtMixin{

  void handleError(error){

  }

}