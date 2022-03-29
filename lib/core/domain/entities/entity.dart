abstract class Entity {
  final String id;
  final DateTime createdDate;
  final DateTime? modifiedDate;
  final String createdUserId;
  final String? modifiedUserId;

  Entity(
    this.id,
    this.createdDate,
    this.modifiedDate,
    this.createdUserId,
    this.modifiedUserId,
  );
}
