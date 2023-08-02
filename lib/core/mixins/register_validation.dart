// import '../../constants/constants.dart';
// import '../../features/auth/presentation/bloc/register/register_bloc.dart';
// import '../inputs/email_input.dart';
// import '../inputs/name_input.dart';
// import '../inputs/password_input.dart';
//
// mixin RegisterValidation {
//   Map<RegisterInputErrors, String>? validateRegister(
//     NameInput firstName,
//     NameInput lastName,
//     EmailInput email,
//     PasswordInput password,
//     String confirmPassword,
//   ) {
//     if (firstName.error == null &&
//         lastName.error == null &&
//         email.error == null &&
//         password.error == null &&
//         password.value == confirmPassword) {
//       return null;
//     }
//     final isValidFirstName = firstNameValidation(firstName);
//     if (isValidFirstName != null) {
//       return isValidFirstName;
//     }
//     final isValidLastName = lastNameValidation(lastName);
//     if (isValidLastName != null) {
//       return isValidLastName;
//     }
//     final isValidEmail = emailValidation(email);
//     if (isValidEmail != null) {
//       return isValidEmail;
//     }
//     final isValidPassword = passwordValidation(password);
//     if (isValidPassword != null) {
//       return isValidPassword;
//     }
//     final isPasswordsMatch = passwordsMatch(password.value, confirmPassword);
//     if (isPasswordsMatch != null) {
//       return isPasswordsMatch;
//     } else {
//       return null;
//     }
//   }
//
//   Map<RegisterInputErrors, String>? passwordsMatch(
//     String password,
//     String confirmPassword,
//   ) {
//     if (password != confirmPassword) {
//       return {
//         RegisterInputErrors.confirmPassword: Validations.passwordNotMatch
//       };
//     } else {
//       return null;
//     }
//   }
//
//   Map<RegisterInputErrors, String>? firstNameValidation(NameInput firstName) {
//     switch (firstName.error) {
//       case NameInputError.empty:
//         return {RegisterInputErrors.firstName: Validations.firstNameEmpty};
//       case NameInputError.short:
//         return {RegisterInputErrors.firstName: Validations.firstNameShort};
//       case NameInputError.long:
//         return {RegisterInputErrors.firstName: Validations.firstNameLong};
//       default:
//         return null;
//     }
//   }
//
//   Map<RegisterInputErrors, String>? lastNameValidation(NameInput lastName) {
//     switch (lastName.error) {
//       case NameInputError.empty:
//         return {RegisterInputErrors.lastName: Validations.lastNameEmpty};
//       case NameInputError.short:
//         return {RegisterInputErrors.lastName: Validations.lastNameShort};
//       case NameInputError.long:
//         return {RegisterInputErrors.lastName: Validations.lastNameLong};
//       default:
//         return null;
//     }
//   }
//
//   Map<RegisterInputErrors, String>? emailValidation(EmailInput email) {
//     switch (email.error) {
//       case EmailInputError.empty:
//         return {RegisterInputErrors.email: Validations.emailEmpty};
//       case EmailInputError.notEmail:
//         return {RegisterInputErrors.email: Validations.notEmail};
//       default:
//         return null;
//     }
//   }
//
//   Map<RegisterInputErrors, String>? passwordValidation(PasswordInput password) {
//     switch (password.error) {
//       case PasswordInputError.empty:
//         return {RegisterInputErrors.password: Validations.passwordEmpty};
//       case PasswordInputError.short:
//         return {RegisterInputErrors.password: Validations.passwordShort};
//       case PasswordInputError.long:
//         return {RegisterInputErrors.password: Validations.passwordLong};
//       default:
//         return null;
//     }
//   }
// }
