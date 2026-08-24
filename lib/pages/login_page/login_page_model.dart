import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CorreoField widget.
  FocusNode? correoFieldFocusNode;
  TextEditingController? correoFieldTextController;
  String? Function(BuildContext, String?)? correoFieldTextControllerValidator;
  // State field(s) for ContraField widget.
  FocusNode? contraFieldFocusNode;
  TextEditingController? contraFieldTextController;
  late bool contraFieldVisibility;
  String? Function(BuildContext, String?)? contraFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    contraFieldVisibility = false;
  }

  @override
  void dispose() {
    correoFieldFocusNode?.dispose();
    correoFieldTextController?.dispose();

    contraFieldFocusNode?.dispose();
    contraFieldTextController?.dispose();
  }
}
