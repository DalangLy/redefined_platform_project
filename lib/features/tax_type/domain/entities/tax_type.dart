import 'package:redefined_platform_project/core/domain/entities/entity.dart';

class TaxType extends Entity {
  TaxType(
    String id,
    DateTime createdDate,
    DateTime? modifiedDate,
    String createdUserId,
    String? modifiedUserId,
  ) : super(
          id,
          createdDate,
          modifiedDate,
          createdUserId,
          modifiedUserId,
        );
}
