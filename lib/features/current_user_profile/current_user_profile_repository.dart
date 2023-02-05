import 'package:posts_flutter/shared/models/user_model.dart';
import 'package:posts_flutter/shared/services/custom_dio.dart';

abstract class CurrentUserProfileRepository {
  Future<List<User>> getFollowers();
}

class CurrentUserProfileRepositoryImpl implements CurrentUserProfileRepository {
  final client = CustomDio();
  @override
  Future<List<User>> getFollowers() async {
    try {
      final response = await client.get("/users");
      final data = response.data as List;
      return data.map((e) => User.fromMap(e)).toList();
    } catch (e) {
      throw Exception("Nao foi possivel buscar os seguidores");
    }
  }
}
