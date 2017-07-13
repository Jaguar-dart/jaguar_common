library jaguar_common.user_model;

abstract class AuthorizationUser {
  /// Authorization Id is the field used to identify the logged in user in
  /// session data
  ///
  /// Could be unique user id, username, email
  String get authorizationId;
}

/// [AuthorizationUser] that uses email as authenticationId and unique record id as
/// authorizationId
abstract class UserEmail implements AuthorizationUser {
  String get id;

  String get email;

  String get password;

  String get authorizationId => id;
}

/// [AuthorizationUser] that uses username as authenticationId and unique record id as
/// authorizationId
abstract class UserUsername implements AuthorizationUser {
  String get id;

  String get username;

  String get password;

  String get authorizationId => id;
}

/// [AuthorizationUser] that uses username and email as authenticationId and unique
/// record id as authorizationId
abstract class UserUsernameEmail implements AuthorizationUser {
  String get id;

  String get username;

  String get email;

  String get password;

  String get authorizationId => id;
}
