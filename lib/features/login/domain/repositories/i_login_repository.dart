abstract class ILoginRepository{
  Future<void> login({required Map<String, dynamic> json,});
}