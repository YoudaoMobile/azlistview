import 'package:flutter/material.dart';
import 'az_common.dart';


class AzHintWidget extends StatefulWidget {

  final IndexHintBuilder indexHintBuilder;

  AzHintWidget(this.indexHintBuilder, {Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return AzHintWidgetState();
  }

}

class AzHintWidgetState extends State<AzHintWidget> {

  bool isShowIndexBarHint = false;
  String indexBarHint = "";


  @override
  Widget build(BuildContext context) {
    Widget indexHint;
    if (widget.indexHintBuilder != null) {
      indexHint = widget.indexHintBuilder(context, '$indexBarHint');
    } else {
      indexHint = Card(
        color: Colors.black54,
        child: Container(
          alignment: Alignment.center,
          width: 80.0,
          height: 80.0,
          child: Text(
            '$indexBarHint',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    if (isShowIndexBarHint) {
      return Center(
        child: indexHint,
      );
    } else {
      return Container();
    }
  }

}