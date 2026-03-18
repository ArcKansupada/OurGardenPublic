import '/flutter_flow/flutter_flow_util.dart';
import 'my_garden_page_widget.dart' show MyGardenPageWidget;
import 'package:flutter/material.dart';

class MyGardenPageModel extends FlutterFlowModel<MyGardenPageWidget> {
  ///  Local state fields for this page.

  String? searchParameter = '';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
