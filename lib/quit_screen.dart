import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'continue_trial.dart';

class QuitPage extends StatefulWidget {
  QuitPage(
      {@required this.subjectId,
      @required this.uuid,
      this.trialNumber,
      this.blockNumber,
      this.lpc});
  final String subjectId;
  final String uuid;
  final int trialNumber;
  final int blockNumber;
  final double lpc;
  @override
  _QuitPageState createState() => _QuitPageState(
      subjectId: subjectId,
      uuid: uuid,
      trialNumber: trialNumber,
      blockNumber: blockNumber,
      lpc: lpc);
}

class _QuitPageState extends State<QuitPage> {
  _QuitPageState(
      {@required this.subjectId,
      @required this.uuid,
      this.trialNumber,
      this.blockNumber,
      this.lpc});
  String subjectId;
  double maxVelocity;
  String uuid;
  int trialNumber;
  int blockNumber;
  double lpc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Thanks for participating!',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ElevatedButton(
            child: Text('BACK TO TRIALS'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContinuationPage(
                    uuid: uuid,
                    subjectId: subjectId,
                    trialNumber: trialNumber,
                    blockNumber: blockNumber,
                    lpc: lpc,
                  ),
                ),
              );
            },
          ),
          ElevatedButton(
            child: Text('CLICK HERE TO EXIT THE APP'),
            onPressed: () => SystemNavigator.pop(),
          ),
        ],
      ),
    );
  }
}
