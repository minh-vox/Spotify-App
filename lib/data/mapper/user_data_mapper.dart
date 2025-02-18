import '../../domain/domain.dart';
import '../data.dart';

class UserDataMapper {
  UserEntity mapToEntity(UserData? data) {
    return UserEntity(
      email: data?.email ?? '',
      userName: data?.userName ?? '',
      password: data?.imageURL ?? '',
    );
  }

  UserData mapToData(UserEntity entity) {
    return UserData(
      email: entity.email,
      userName: entity.userName,
      imageURL: entity.password,
    );
  }
}
