import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(
    DestinationState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: Container(
      color: state.themeColor,
      child: Center(
        child: Text('destination',style: TextStyle(color: state.themeColor),),
      ),
    ),
  );
}
