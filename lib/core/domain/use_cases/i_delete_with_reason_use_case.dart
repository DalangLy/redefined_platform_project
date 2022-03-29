abstract class IDeleteWithReasonUseCase{
  Future<String> call({required Map<String, dynamic> json,});
}