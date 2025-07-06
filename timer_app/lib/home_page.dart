import 'package:flutter/material.dart';
import 'base_layout.dart';

class HomePage extends StatelessWidget {
  void _showInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Information'),
        content: Text(
          'Hier kannst du zwischen verschiedenen Timer-Modi wählen:\n\n'
          '- Intervalltimer\n'
          '- Stufenintervalltimer\n'
          '- Stoppuhr\n\n'
          'Tippe auf den Timer den du starten willst.',
        ),
        actions: [
          TextButton(
            child: Text('Schließen'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      title: 'Timerwahl',
      leadingTop: IconButton(
        icon: Icon(Icons.info_outline),
        onPressed: () => _showInfoDialog(context),
      ),
      trailingImage: 'pic/T.png',
      child: Center(
        child: Text(
          'Hier kommt die Auswahl hin',
          style: TextStyle(fontSize: 18, color: Colors.grey[700]),
        ),
      ),
      // Bottom-Bereich bleibt frei
    );
  }
}
