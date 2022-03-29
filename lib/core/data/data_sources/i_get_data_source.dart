import 'package:redefined_platform_project/core/domain/entities/entity.dart';

abstract class IGetDataSource{
  Future<List<Entity>> get();
}