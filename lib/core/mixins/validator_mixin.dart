import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

mixin ValidatorMixin{
  var nameValidator = RequiredValidator(errorText: 'required'.tr);

  var emailValidator = MultiValidator([
    RequiredValidator(errorText: 'required'.tr),
    EmailValidator(errorText: 'email_validator'.tr),
    MinLengthValidator(15, errorText: 'email_min_length'.tr),
    MaxLengthValidator(30, errorText: 'email_max_validator'.tr),
  ]);

  var passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'required'.tr),
    LengthRangeValidator(min: 4, max: 16, errorText: 'password_length'.tr),
  ]);

  var mobileValidator = MultiValidator([
    RequiredValidator(errorText: 'required'.tr),
    LengthRangeValidator(min: 10, max: 10, errorText: 'mobile_length'.tr)
  ]);

  var cityValidator = MultiValidator([
    RequiredValidator(errorText: 'required'.tr),
    LengthRangeValidator(min: 5, max: 30, errorText: 'address_length'.tr)
  ]);
}