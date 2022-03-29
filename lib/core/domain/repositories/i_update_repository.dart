import 'package:redefined_platform_project/core/domain/entities/entity.dart';

abstract class IUpdateRepository{
  Future<Entity> update({required Map<String, dynamic> json,});
}