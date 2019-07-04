import 'package:flutter/material.dart';

class LoadingButton extends MaterialButton {
  bool _loading;
  Function _callback;

  LoadingButton(this._callback, this._loading,{Key key}) : super(key: key)

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        
        onPressed: () {
          _callback();
        },
      ),
    );
  }
}
