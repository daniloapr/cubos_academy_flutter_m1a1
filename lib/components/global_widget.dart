import 'package:aula01/blocs/global_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class GlobalWidget extends StatefulWidget {
  final Widget child;

  const GlobalWidget({Key key, @required this.child}) : super(key: key);
  @override
  _GlobalWidgetState createState() => _GlobalWidgetState(child);
}

class _GlobalWidgetState extends State<GlobalWidget> {
  final Widget child;
  _GlobalWidgetState(this.child);

  final FocusNode _focusNode = FocusNode();
  final _bloc = BlocProvider.getBloc<GlobalBloc>();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RawKeyboardListener(
        focusNode: _focusNode,
        onKey: _bloc.handleKeyEvent,
        child: child,
      ),
    );
  }
}
