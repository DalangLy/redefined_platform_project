import 'package:redefined_platform_project/core/domain/entities/entity.dart';
import 'package:redefined_platform_project/core/domain/use_cases/i_get_use_case.dart';
import 'package:redefined_platform_project/features/tax_type/domain/repositories/i_tax_type_repository.dart';

class GetAllTaxTypesUseCase implements IGetUseCase{
  final ITaxTypeRepository _repository;

  GetAllTaxTypesUseCase(this._repository);

  @override
  Future<List<Entity>> call() {
    return _repository.get();
  }
}