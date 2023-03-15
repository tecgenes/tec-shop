import 'package:tec_shop/base/enums/service_provider.dart';

class ServiceContainer{

  static T? getService<T>({ServiceProvider serviceProvider = ServiceProvider.Firebase}){
    Map<Type, T Function()> services = <Type, T Function()>{

    };

    return services[T]?.call();
  }
}