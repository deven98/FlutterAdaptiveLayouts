import 'package:flutter/material.dart';

typedef Null ItemSelectedCallback(int value);

class ListWidget extends StatefulWidget {
  final int count;
  final ItemSelectedCallback onItemSelected;

  ListWidget(
    this.count,
    this.onItemSelected,
  );

  @override
  _ListWidgetState createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.count,
      itemBuilder: (context, position) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: InkWell(
              onTap: () {
                widget.onItemSelected(position);
              },
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(position.toString(), style: TextStyle(fontSize: 22.0),),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
