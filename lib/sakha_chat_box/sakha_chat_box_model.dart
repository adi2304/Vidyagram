import '/flutter_flow/flutter_flow_util.dart';
import 'sakha_chat_box_widget.dart' show SakhaChatBoxWidget;
import 'package:flutter/material.dart';

class SakhaChatBoxModel extends FlutterFlowModel<SakhaChatBoxWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for Texprompt widget.
  FocusNode? texpromptFocusNode;
  TextEditingController? texpromptController;
  String? Function(BuildContext, String?)? texpromptControllerValidator;
  // Stores action output result for [Custom Action - invokeChatGPT] action in IconButton widget.
  dynamic chatResult;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    listViewController?.dispose();
    texpromptFocusNode?.dispose();
    texpromptController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
