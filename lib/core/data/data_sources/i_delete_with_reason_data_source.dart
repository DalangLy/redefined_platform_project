abstract class IDeleteWithReasonUseCase{
  Future<String> delete({required Map<String, dynamic> json,});
}