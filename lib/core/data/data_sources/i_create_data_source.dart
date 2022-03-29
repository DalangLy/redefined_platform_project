import 'package:redefined_platform_project/core/domain/entities/entity.dart';

abstract class ICreateDataSource{
  Future<Entity> create({required Map<String, dynamic> json});
}