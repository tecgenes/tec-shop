abstract class Filter{
  String get parent;
  String get operator;
  dynamic get comparitor;

  Map<String, dynamic> toMap();
}