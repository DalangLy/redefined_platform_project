import 'package:redefined_platform_project/core/domain/entities/entity.dart';

abstract class IGetRepository{
  Future<List<Entity>> get();
}