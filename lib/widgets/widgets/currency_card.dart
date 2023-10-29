import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final double x = 0, y;
  final _blackColor = const Color(0xFF1F2123);

  const CurrencyCard(
      {Key? key,
      required this.name,
      required this.code,
      required this.amount,
      required this.icon,
      required this.isInverted,
      required this.y})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(x, y),
      child: Container(
        clipBehavior: Clip.hardEdge, // 해당 넘치는 화면을 자를 수 있음 → HardEdge
        decoration: BoxDecoration(
            color: isInverted ? Colors.white : _blackColor,
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                            color: isInverted ? _blackColor : Colors.white,
                            fontSize: 20),
                      ),
                      Text(code,
                          style: TextStyle(
                              color: isInverted
                                  ? _blackColor
                                  : Colors.white.withOpacity(0.8),
                              fontSize: 20))
                    ],
                  )
                ],
              ),
              Transform.scale(
                // 아이콘 크기를 키우기
                scale: 2.2,
                child: Transform.translate(
                  offset: const Offset(-5, 12),
                  // 아이콘 X Y 위치 변경
                  child: Icon(
                    icon,
                    color: isInverted ? _blackColor : Colors.white,
                    size: 88,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
