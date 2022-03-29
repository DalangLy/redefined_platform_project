abstract class ILoginRemoteDataSource{
  Future<Map<String, dynamic>> login({required Map<String, dynamic> json,});
}