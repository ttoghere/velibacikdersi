import 'package:flutter/material.dart';

//Reaktif olarak kullanılabilecek olan widgetların
//Yönetici/Temel yapısı olarak yapılmaktadır
//Sayfa niteliğinde olan yerlerin türetilebileceği bir sayfa
class BaseView<T> extends StatefulWidget {
  late T viewModel;
  late Function(T model) onModelReady;
  late VoidCallback onDispose;
  late Widget Function(BuildContext context, T value) onBuilder;

  BaseView({
    Key? key,
    required this.onBuilder,
    required this.onDispose,
    required this.onModelReady,
    required this.viewModel,
  }) : super(key: key);

  @override
  _BaseViewState createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  @override
  void initState() {
    if (widget.onModelReady != null) {
      widget.onModelReady(widget.viewModel);
    }
    super.initState();
  }

  @override
  void dispose() {
    if (widget.onDispose != null) {
      widget.onDispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.onBuilder(context, widget.viewModel);
  }
}
