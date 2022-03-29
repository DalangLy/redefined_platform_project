import 'package:redefined_platform_project/core/domain/entities/entity.dart';

abstract class ICreateUseCase{
  Future<Entity> call({required Map<String, dynamic> json,});
}