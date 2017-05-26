library jaguar_common.user_model;

abstract class UserBase {
  /// Authorization Id is the field used to identify the logged in user in
  /// session data
  ///
  /// Could be unique user id, username, email
  String get authorizationId;
}

abstract class UserModel implements UserBase {
  /// Authentication Id is the unique field used to login along with the password
  ///
  /// Could be email, username, etc
  String get loginId;

  /// Authorization keyword is the password field
  String get loginPassword;
}

/// UserModel that uses email as authenticationId and unique record id as
/// authorizationId
class UserEmail implements UserBase {
  String id;

  String email;

  String password;

  String get authorizationId => id;
}

/// UserModel that uses username as authenticationId and unique record id as
/// authorizationId
class UserUsername implements UserBase {
  String id;

  String username;

  String password;

  String get authorizationId => id;
}

/// UserModel that uses username and email as authenticationId and unique record
/// id as authorizationId
class UserUsernameEmail implements UserBase {
  String id;

  String username;

  String email;

  String password;

  String get authorizationId => id;
}