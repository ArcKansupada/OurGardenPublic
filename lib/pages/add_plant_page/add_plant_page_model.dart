import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_plant_page_widget.dart' show AddPlantPageWidget;
import 'package:flutter/material.dart';

class AddPlantPageModel extends FlutterFlowModel<AddPlantPageWidget> {
  ///  Local state fields for this page.

  bool searchComplete = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Search Plants)] action in TextField widget.
  ApiCallResponse? apiResultyck;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
