import 'package:get/get.dart';
import 'package:tec_shop/core/mixins/loading_mixin.dart';
import 'package:tec_shop/core/mixins/validator_mixin.dart';

abstract class CoreController extends GetxController with ValidatorMixin, LoadingMixin{

  RxBool isLoading = RxBool(false);
  RxBool hasError = RxBool(false);
  RxBool hasSuccess = RxBool(false);

  RxString loadingTitle = RxString("");
  RxString loadingMessage = RxString("");

  RxString errorTitle = RxString("");
  RxString errorMessage = RxString("");

  RxString successTitle = RxString("");
  RxString successMessage = RxString("");

  loading(String title, String message){
    isLoading.value = true;
    loadingTitle.value = title.tr;
    loadingMessage.value = message.tr;
  }

  endLoading(){
    isLoading.value = false;
    loadingTitle.value = "";
    loadingMessage.value = "";
  }

  showError(String title, String message){
    hasError.value = true;
    errorTitle.value = title;
    errorMessage.value = message;
  }

  endError(){
    hasError.value = false;
    errorTitle.value = "";
    errorMessage.value = "";
  }

  success(String title, String message){
    hasSuccess.value = true;
    successTitle.value = title;
    successMessage.value = message;
  }

  endSuccess(){
    hasSuccess.value = false;
    successTitle.value = "";
    successMessage.value = "";
  }
}