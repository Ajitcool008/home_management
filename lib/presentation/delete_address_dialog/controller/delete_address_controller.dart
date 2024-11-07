import 'package:home_management/core/app_export.dart';import 'package:home_management/presentation/delete_address_dialog/models/delete_address_model.dart';/// A controller class for the DeleteAddressDialog.
///
/// This class manages the state of the DeleteAddressDialog, including the
/// current deleteAddressModelObj
class DeleteAddressController extends GetxController {Rx<DeleteAddressModel> deleteAddressModelObj = DeleteAddressModel().obs;

 }
