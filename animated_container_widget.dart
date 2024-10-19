import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  @override
  _AnimatedContainerWidgetState createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: Duration(seconds: 1),
            width: _isExpanded ? 200 : 100,
            height: _isExpanded ? 200 : 100,
            decoration: BoxDecoration(
              color: _isExpanded ? Colors.green : Colors.orange,
              borderRadius: BorderRadius.circular(_isExpanded ? 50 : 0),
            ),
            curve: Curves.easeInOut,
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Text('Tap This to See The Change'),
          ),
        ],
      ),
    );
  }
}
