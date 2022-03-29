import 'package:redefined_platform_project/core/errors/failure.dart';

class UnknownFailure extends Failure{
  UnknownFailure({required String message}) : super(message: message);
}