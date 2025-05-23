import 'package:flutter/material.dart';

class InputCounterBox extends StatefulWidget {
  final Color color;
  final void Function(int length) onLengthChanged;

  const InputCounterBox({
    super.key,
    required this.color,
    required this.onLengthChanged,
  });

  @override
  State<InputCounterBox> createState() => _InputCounterBoxState();
}

class _InputCounterBoxState extends State<InputCounterBox> {
  String _input = "";

  void _onTextChanged(String text) {
    setState(() {
      _input = text;
    });
    widget.onLengthChanged(text.length); // Callback aufrufen
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            onChanged: _onTextChanged,
            decoration: InputDecoration(
              hintText: "Gib etwas ein...",
              border: InputBorder.none,
            ),
          ),
          SizedBox(height: 8),
          Text("Länge: ${_input.length}"),
        ],
      ),
    );
  }
}
