import 'package:flutter/material.dart';
import '../utils/get_small_viewport.dart';

class LongTileButton extends StatelessWidget {
  final Widget child;
  final bool? showRipple;
  final VoidCallback? onClick;
  final Widget? prefix;
  final Widget? suffix;

  const LongTileButton({
    super.key,
    required this.child,
    this.showRipple = false,
    this.onClick,
    this.prefix,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick!();
      },
      child: LayoutBuilder(builder: (context, constraint) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          alignment: Alignment.center,
          height: isSmallPort(context) ? 44 : 48,
          // width: isSmallPort(context)
          //     ? MediaQuery.sizeOf(context).width * 0.25
          //     : MediaQuery.sizeOf(context).width * 0.1,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 253, 255, 187),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 121, 121, 104),
                  blurRadius: 10,
                  offset: Offset(0, 5))
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween
            ,
            children: [
              prefix != null
                  ? SizedBox(height: 44, width: 44, child: prefix!)
                  : SizedBox(),
              prefix != null
                  ? SizedBox(
                      width: 8,
                    )
                  : SizedBox(),
              Flexible(child: child),
              suffix != null
                  ? SizedBox(
                      width: 8,
                    )
                  : SizedBox(),
              suffix != null
                  ? SizedBox(height: 44, width: 44, child: suffix!)
                  : SizedBox(),
            ],
          ),
        );
      }),
    );
  }
}
