import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_page_widget.dart' show CreatePageWidget;
import 'package:flutter/material.dart';

class CreatePageModel extends FlutterFlowModel<CreatePageWidget> {
  ///  Local state fields for this page.

  bool searchComplete = false;

  dynamic requestedPlant;

  bool plantSelected = false;

  DocumentReference? offeredPlant;

  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (Search Plants)] action in TextField widget.
  ApiCallResponse? searchedPlants;
  // Stores action output result for [Backend Call - Read Document] action in TextField widget.
  UsersRecord? userPlants;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PlantEntryRecord? pEntry;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  FeedItemRecord? outgoingRequest;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  PlantEntryRecord? offered;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PlantEntryRecord? finalOffer;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  FeedItemRecord? completeOffer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
