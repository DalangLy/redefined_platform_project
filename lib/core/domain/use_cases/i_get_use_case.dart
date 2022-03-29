import 'package:redefined_platform_project/core/domain/entities/entity.dart';

abstract class IGetUseCase{
  Future<List<Entity>> call();
}