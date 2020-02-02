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
      new DominoThree(),
      new DominoFour(),
      new DominoFive(),
      new DominoSix(),
      new DominoSeven(),
      new DominoEight(),
      new DominoNine(),
      new DominoTen(),
      new DominoEleven(),
      new DominoTwelve(),
    ];

    return GestureDetector(
      onTap: onTap,
      child: new Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10)
          ),
          border: Border.all(width: 0.5, color: Color(0xFFFFFFFF)),
          boxShadow: [
            BoxShadow(
              color: Color(0x99FFFFFF),
              blurRadius: 4.0, // has the effect of softening the shadow
              spreadRadius: 1.5, // has the effect of extending the shadow
              offset: Offset(
                -2.0, // horizontal, move right 10
                -2.0, // vertical, move down 10
              ),
            ),
            BoxShadow(
              color: Color(0x26000000),
              blurRadius: 4.0, // has the effect of softening the shadow
              spreadRadius: 0.5, // has the effect of extending the shadow
              offset: Offset(
                2.0, // horizontal, move right 10
                2.0, // vertical, move down 10
              ),
            )
         ],
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
      height: 13,
      width: 13,
      decoration: BoxDecoration(
        color: Color(0xFF1C7DD6),
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
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF1FB08D),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF1FB08D),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DominoThree extends StatelessWidget {
  const DominoThree({
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
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFD14765),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFD14765),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFD14765),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DominoFour extends StatelessWidget {
  const DominoFour({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF617D5A),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF617D5A),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF617D5A),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF617D5A),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DominoFive extends StatelessWidget {
  const DominoFive({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF00427E),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF00427E),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF00427E),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF00427E),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF00427E),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
class DominoSix extends StatelessWidget {
  const DominoSix({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFCCAB00),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFCCAB00),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFCCAB00),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFCCAB00),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFCCAB00),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFCCAB00),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DominoSeven extends StatelessWidget {
  const DominoSeven({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFD877C2),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFD877C2),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFD877C2),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFD877C2),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFD877C2),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFD877C2),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFD877C2),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DominoEight extends StatelessWidget {
  const DominoEight({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF2A4730),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF2A4730),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF2A4730),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF2A4730),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF2A4730),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF2A4730),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF2A4730),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF2A4730),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DominoNine extends StatelessWidget {
  const DominoNine({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF8553A4),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF8553A4),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF8553A4),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF8553A4),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF8553A4),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF8553A4),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF8553A4),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF8553A4),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF8553A4),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DominoTen extends StatelessWidget {
  const DominoTen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFE4931A),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFE4931A),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFE4931A),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFE4931A),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFE4931A),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFE4931A),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFE4931A),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFE4931A),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFE4931A),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFFE4931A),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DominoEleven extends StatelessWidget {
  const DominoEleven({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF282828),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF282828),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF282828),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF282828),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF282828),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF282828),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF282828),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF282828),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF282828),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF282828),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF282828),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DominoTwelve extends StatelessWidget {
  const DominoTwelve({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF969696),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF969696),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF969696),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF969696),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF969696),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF969696),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF969696),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF969696),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF969696),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF969696),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF969696),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Color(0xFF969696),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}