class CoreException implements Exception{
  final String message;
  final String? url;
  CoreException({required this.message, this.url=""});
}