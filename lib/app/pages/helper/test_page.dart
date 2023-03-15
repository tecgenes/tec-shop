import 'package:get/get.dart';
import 'package:tec_shop/app/ui/screens/test_screen.dart';

class TestPage extends GetPageRoute{
  TestPage() : super(
    routeName: '/test',
    page: () =>  TestScreen(),
    popGesture: true,
    maintainState: true,
  );
}