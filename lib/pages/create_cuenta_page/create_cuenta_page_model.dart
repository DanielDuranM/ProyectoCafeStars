import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_cuenta_page_widget.dart' show CreateCuentaPageWidget;
import 'package:flutter/material.dart';

class CreateCuentaPageModel extends FlutterFlowModel<CreateCuentaPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for NombreField widget.
  FocusNode? nombreFieldFocusNode;
  TextEditingController? nombreFieldTextController;
  String? Function(BuildContext, String?)? nombreFieldTextControllerValidator;
  // State field(s) for CorreoField widget.
  FocusNode? correoFieldFocusNode;
  TextEditingController? correoFieldTextController;
  String? Function(BuildContext, String?)? correoFieldTextControllerValidator;
  // State field(s) for ContraField widget.
  FocusNode? contraFieldFocusNode;
  TextEditingController? contraFieldTextController;
  late bool contraFieldVisibility;
  String? Function(BuildContext, String?)? contraFieldTextControllerValidator;
  // State field(s) for ContraConfirField widget.
  FocusNode? contraConfirFieldFocusNode;
  TextEditingController? contraConfirFieldTextController;
  late bool contraConfirFieldVisibility;
  String? Function(BuildContext, String?)?
      contraConfirFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    contraFieldVisibility = false;
    contraConfirFieldVisibility = false;
  }

  @override
  void dispose() {
    nombreFieldFocusNode?.dispose();
    nombreFieldTextController?.dispose();

    correoFieldFocusNode?.dispose();
    correoFieldTextController?.dispose();

    contraFieldFocusNode?.dispose();
    contraFieldTextController?.dispose();

    contraConfirFieldFocusNode?.dispose();
    contraConfirFieldTextController?.dispose();
  }
}
