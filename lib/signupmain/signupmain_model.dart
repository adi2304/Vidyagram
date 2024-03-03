import '/flutter_flow/flutter_flow_util.dart';
import 'signupmain_widget.dart' show SignupmainWidget;
import 'package:flutter/material.dart';

class SignupmainModel extends FlutterFlowModel<SignupmainWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for password widget.
  FocusNode? passwordFocusNode1;
  TextEditingController? passwordController1;
  String? Function(BuildContext, String?)? passwordController1Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode2;
  TextEditingController? passwordController2;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordController2Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    passwordFocusNode1?.dispose();
    passwordController1?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    passwordFocusNode2?.dispose();
    passwordController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
