import '/backend/backend.dart';
import '/components/back_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'join_community_widget.dart' show JoinCommunityWidget;
import 'package:flutter/material.dart';

class JoinCommunityModel extends FlutterFlowModel<JoinCommunityWidget> {
  ///  Local state fields for this page.

  String? communityID;

  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<CommunitiesRecord>? queriedCommunity;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
