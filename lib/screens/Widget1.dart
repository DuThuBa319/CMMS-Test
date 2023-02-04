import "package:flutter/material.dart";

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(16, 16, 16, 24),
          color: const Color.fromARGB(255, 234, 234, 234),
          width: 396,
          height: 170,
        ),
        LineDivider(),
        Row(
          children: [
            BoxIcon(Icons.calendar_month, 'Lịch sửa chữa'),
            BoxIcon(Icons.qr_code_scanner, 'Quét mã'),
            BoxIcon(Icons.dns, 'Kho phụ kiện')
          ],
        ),
        LineDivider(),
        const Padding(
          padding: EdgeInsets.fromLTRB(23, 24, 0, 8),
          child: Text(
            'Gần đây',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        Expanded(
            child: Container(
          margin: const EdgeInsets.only(top: 3, bottom: 20),
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) =>
                InfoCard(index == 0 ? Icons.build : Icons.invert_colors),
          ),
        ))
      ],
    );
  }

  Card InfoCard(IconData icon) {
    return Card(
      color: const Color.fromARGB(255, 243, 243, 243),
      margin: const EdgeInsets.fromLTRB(24, 5, 24, 5),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 7, 7, 8),
        child: Row(
          children: <Widget>[
            Icon(icon),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultTextStyle(
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'A012345',
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Máy ép',
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'M39',
                                ),
                              ],
                            )
                          ]),
                    ),
                    const Text(
                      '14:23 3/2/2023',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 2,
                          color: Color.fromARGB(255, 117, 117, 117)),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget LineDivider() => const Divider(
        indent: 32,
        endIndent: 32,
        thickness: 1,
        color: Color.fromARGB(255, 220, 220, 220),
      );

  Widget BoxIcon(
    IconData icon,
    String text,
  ) {
    return Container(
      margin: const EdgeInsets.fromLTRB(23, 20, 10, 20),
      child: Column(
        children: [
          IconButton(
              padding: const EdgeInsets.only(bottom: 8, right: 5),
              onPressed: () {},
              icon: Icon(
                icon,
                size: 35,
              )),
          Text(
            text,
            style: const TextStyle(
                fontSize: 12, color: Colors.black, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
