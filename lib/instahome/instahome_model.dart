import '/components/posts_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'instahome_widget.dart' show InstahomeWidget;
import 'package:flutter/material.dart';

class InstahomeModel extends FlutterFlowModel<InstahomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Posts component.
  late PostsModel postsModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    postsModel = createModel(context, () => PostsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    postsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
