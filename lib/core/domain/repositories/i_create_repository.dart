import 'package:redefined_platform_project/core/domain/entities/entity.dart';

abstract class ICreateRepository{
  Future<Entity> create({required Map<String, dynamic> json,});
}