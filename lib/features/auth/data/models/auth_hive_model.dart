import 'package:hive/hive.dart';
import '../../../../core/constants/hive_table_constant.dart';

part 'auth_hive_model.g.dart';

@HiveType(typeId: HiveTableConstant.authTypeId)
class AuthHiveModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String username;

  @HiveField(2)
  String email;

  @HiveField(3)
  String passwordHash;

  AuthHiveModel({
    required this.id,
    required this.username,
    required this.email,
    required this.passwordHash,
  });

  // Convert to entity (for domain layer)
  // You'll need this later if you implement full clean architecture
  // But for now, we use it in ViewModel
}
