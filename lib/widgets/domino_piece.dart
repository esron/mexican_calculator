import 'package:flutter/material.dart';

class DominoPiece extends StatelessWidget {
  final GestureTapCallback onTap;
  final int value;

  const DominoPiece({ Key key, this.onTap, this.value }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List list = [
      new DominoZero(),
      new DominoOne(),
      new DominoTwo(),
      new DominoOne(),
      new DominoOne(),
      new DominoOne(),
      new DominoOne(),
      new DominoOne(),
      new DominoOne(),
      new DominoOne(),
      new DominoOne(),
      new DominoOne(),
      new DominoOne(),
    ];

    return GestureDetector(
      onTap: onTap,
      child: new Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          ),
        ),
        child: Center(
          child: list[value],
        )
      ),
    );
  }
}

class DominoZero extends StatelessWidget {
  const DominoZero({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DominoOne extends StatelessWidget {
  const DominoOne({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        color: Color(0xFF204c83),
        shape: BoxShape.circle,
      ),
    );
  }
}

class DominoTwo extends StatelessWidget {
  const DominoTwo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF172F0C),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF172F0C),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
