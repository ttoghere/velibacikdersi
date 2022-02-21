import 'package:flutter/material.dart';
import 'package:velibacikdersi/core/base/state/base_state.dart';
import 'package:velibacikdersi/core/base/view/base_view.dart';

class TextView extends StatefulWidget {
  const TextView({Key? key}) : super(key: key);

  @override
  _TextViewState createState() => _TextViewState();
}

class _TextViewState extends BaseState<TextView> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
        onBuilder: (context, value) => Text('data'),
        onDispose: () {},
        onModelReady: (value) {},
        viewModel: "viewModel");
  }
}
