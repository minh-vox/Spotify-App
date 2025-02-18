import '../../domain/domain.dart';
import '../model/register_data.dart';

class RegisterDataMapper {
  RegisterEntity mapToEntity(RegisterData? data) {
    return RegisterEntity(
      email: data?.email ?? '',
      userName: data?.userName ?? '',
      password: data?.password ?? '',
    );
  }

  RegisterData mapToData(RegisterEntity entity) {
    return RegisterData(
      email: entity.email,
      userName: entity.userName,
      password: entity.password,
    );
  }
}
