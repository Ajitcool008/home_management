import 'package:home_management/core/app_export.dart';
import 'package:home_management/presentation/reset_password_success_dialog/models/reset_password_success_model.dart';

/// A controller class for the ResetPasswordSuccessDialog.
///
/// This class manages the state of the ResetPasswordSuccessDialog, including the
/// current resetPasswordSuccessModelObj
class ResetPasswordSuccessController extends GetxController {
  Rx<ResetPasswordSuccessModel> resetPasswordSuccessModelObj =
      ResetPasswordSuccessModel().obs;
}
