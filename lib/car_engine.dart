import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarEngine {
  CarEngine({@required this.maxVelocity, this.lpc});
  double dy = 0.0;
  double maxVelocity;
  double lpc;
  double velocity;
  double aW = 3.55555555555556;

  double getPos(joyStickPos, getCurrentPos) {
    velocity = aW * lpc;
    dy = ((-.35 * getCurrentPos) + (joyStickPos * velocity)) * 0.016;
    getCurrentPos = dy + getCurrentPos;
    return getCurrentPos;
  }
}
