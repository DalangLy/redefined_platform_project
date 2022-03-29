abstract class IDeleteWithReasonRepository{
  Future<String> delete({required Map<String, dynamic> json,});
}