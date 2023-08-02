//
// import '../../constants/constants.dart';
// import '../inputs/email_input.dart';
// import '../inputs/name_input.dart';
//
// mixin ProfileEditValidation {
//   Map<ProfileEditInputErrors, String>? validateProfileEdit(
//     NameInput firstName,
//     NameInput lastName,
//     EmailInput email,
//   ) {
//     if (firstName.error == null &&
//         lastName.error == null &&
//         email.error == null) {
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
//   }
//
//   Map<ProfileEditInputErrors, String>? firstNameValidation(
//       NameInput firstName) {
//     switch (firstName.error) {
//       case NameInputError.empty:
//         return {ProfileEditInputErrors.firstName: Validations.firstNameEmpty};
//       case NameInputError.short:
//         return {ProfileEditInputErrors.firstName: Validations.firstNameShort};
//       case NameInputError.long:
//         return {ProfileEditInputErrors.firstName: Validations.firstNameLong};
//       default:
//         return null;
//     }
//   }
//
//   Map<ProfileEditInputErrors, String>? lastNameValidation(NameInput lastName) {
//     switch (lastName.error) {
//       case NameInputError.empty:
//         return {ProfileEditInputErrors.lastName: Validations.lastNameEmpty};
//       case NameInputError.short:
//         return {ProfileEditInputErrors.lastName: Validations.lastNameShort};
//       case NameInputError.long:
//         return {ProfileEditInputErrors.lastName: Validations.lastNameLong};
//       default:
//         return null;
//     }
//   }
//
//   Map<ProfileEditInputErrors, String>? emailValidation(EmailInput email) {
//     switch (email.error) {
//       case EmailInputError.empty:
//         return {ProfileEditInputErrors.email: Validations.emailEmpty};
//       case EmailInputError.notEmail:
//         return {ProfileEditInputErrors.email: Validations.notEmail};
//       default:
//         return null;
//     }
//   }
// }
