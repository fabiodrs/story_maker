import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FooterToolsWidget extends StatelessWidget {
  final AsyncCallback onDone;
  final Widget? doneButtonChild;

  const FooterToolsWidget({
    Key? key,
    required this.onDone,
    this.doneButtonChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Colors.black,
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 4, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () { Navigator.of(context).maybePop(); },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                  ),
                ),
                shadowColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: doneButtonChild ??
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: const [
                          SizedBox(width: 4),
                          Text(
                            'Cancelar',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 4),
                          Icon(
                            CupertinoIcons.xmark_circle,
                            color: Colors.black,
                            size: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
            ),
            ElevatedButton(
              onPressed: onDone,
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                  ),
                ),
                shadowColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: doneButtonChild ??
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: const [
                          SizedBox(width: 4),
                          Text(
                            'Adicionar aos Spots',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 4),
                          Icon(
                            CupertinoIcons.forward,
                            color: Colors.black,
                            size: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
