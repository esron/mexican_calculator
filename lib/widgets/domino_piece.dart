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
        color: Color(0xFF327db8),
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
                color: Color(0xFF446d4d),
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
                color: Color(0xFF446d4d),
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
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFFCF86A6),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFFCF86A6),
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
                color: Color(0xFFCF86A6),
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
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF737156),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF737156),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF737156),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF737156),
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
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF1B3B72),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF1B3B72),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF1B3B72),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF1B3B72),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF1B3B72),
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
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFFdfd42a),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFFdfd42a),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFFdfd42a),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFFdfd42a),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFFdfd42a),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFFdfd42a),
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
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF7b719d),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF7b719d),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF7b719d),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF7b719d),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF7b719d),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF7b719d),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF7b719d),
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
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF213f30),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF213f30),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF213f30),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF213f30),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF213f30),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF213f30),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF213f30),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF213f30),
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
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF372c6d),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF372c6d),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF372c6d),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF372c6d),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF372c6d),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF372c6d),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF372c6d),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF372c6d),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF372c6d),
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
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFFd07629),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFFd07629),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFFd07629),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFFd07629),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFFd07629),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFFd07629),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFFd07629),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFFd07629),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFFd07629),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFFd07629),
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
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF162222),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF162222),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF162222),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF162222),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF162222),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF162222),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF162222),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF162222),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF162222),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF162222),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF162222),
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
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF9da4ad),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF9da4ad),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF9da4ad),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF9da4ad),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF9da4ad),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF9da4ad),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF9da4ad),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF9da4ad),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF9da4ad),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF9da4ad),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF9da4ad),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xFF9da4ad),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
