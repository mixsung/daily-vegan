import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:daily_vegan/cal_files/basic_example.dart';

class SampleCal extends StatefulWidget {
  @override
  _SampleCalState createState() => _SampleCalState();
}

class _SampleCalState extends State<SampleCal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20.0),
            ElevatedButton(
              child: Text('Basics'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => TableBasicsExample()),
              ),
            ),
            const SizedBox(height: 12.0),
            // ElevatedButton(
            //   child: Text('Range Selection'),
            //   onPressed: () => Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (_) => TableRangeExample()),
            //   ),
            // ),
            const SizedBox(height: 12.0),
            // ElevatedButton(
            //   child: Text('Events'),
            //   onPressed: () => Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (_) => TableEventsExample()),
            //   ),
            // ),
            const SizedBox(height: 12.0),
            // ElevatedButton(
            //   child: Text('Multiple Selection'),
            //   onPressed: () => Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (_) => TableMultiExample()),
            //   ),
            // ),
            const SizedBox(height: 12.0),
            // ElevatedButton(
            //   child: Text('Complex'),
            //   onPressed: () => Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (_) => TableComplexExample()),
            //   ),
            // ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
