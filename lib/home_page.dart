
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ///Provider.of<Counter>(context) is used to consume the provider
    /// in the HomePage widget.

    final counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Provider Example')),
      body: Center(
        child: Text('Counter: ${counter.value}'),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => counter.increment(),
      child: Icon(Icons.add),
    ),
    );
  }
}
