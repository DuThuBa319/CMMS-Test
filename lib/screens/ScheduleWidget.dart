import 'package:cmms_app/presentation/common_widget/item_devider.dart';
import 'package:cmms_app/presentation/common_widget/menu_item_view.dart';
import "package:flutter/material.dart";

class ScheduleWidget extends StatefulWidget {
  const ScheduleWidget({super.key});

  @override
  State<ScheduleWidget> createState() => _ScheduleWidgetState();
}

class _ScheduleWidgetState extends State<ScheduleWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          color: Colors.grey,
          height: 20,
        ),

        //-----------------------------//
        Expanded(
            child: Container(
          margin: const EdgeInsets.only(top: 3, bottom: 20),
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) => infoCard(index),
          ),
        ))
      ],
    );
  }

  Widget infoCard(int index) {
    return Card(
      color: const Color.fromARGB(255, 243, 243, 243),
      margin: const EdgeInsets.fromLTRB(20, 14, 20, 14),
      child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 12, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Stack(
                children: [
                  const MenuItemView(
                    title: 'A012345',
                    titleSize: 20,
                    icon: Icon(Icons.build, size: 14),
                    divider: ItemDivider.line,
                    padding: EdgeInsets.only(bottom: 9),
                    tailIcon: null,
                  ),
                  Positioned(
                    right: 0,
                    top: 2,
                    child: Row(
                      children: [
                        const Text(
                          '14:23 12/11/2022   ',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 118, 118, 118)),
                        ),
                        statusContainer(
                            width: 61,
                            height: 22,
                            statusText: (index % 2 == 0) ? 'Rất cao' : 'Vừa'),
                      ],
                    ),
                  )
                ],
              ),
              statusContainer(
                  width: 94,
                  height: 22,
                  margin: const EdgeInsets.only(bottom: 7, top: 8),
                  statusText: (index % 2 == 0) ? 'Hoàn thành' : 'Chuẩn bị'),
              DefaultTextStyle(
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      height: 1.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.all(4),
                          width: 212,
                          height: 118,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Thiết bị: Máy ép'),
                              Text('Thời gian: 70 phút'),
                              Expanded(
                                child: Text('Nguyên nhân: Thay ty lói, vệ sinh',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis),
                              )
                            ],
                          )),
                      Wrap(
                        spacing: 8,
                        direction: Axis.vertical,
                        children: const [
                          Text('Mã số: M39'),
                          Text('Kết quả: đạt'),
                        ],
                      ),
                    ],
                  ))
            ],
          )),
    );
  }

  Widget statusContainer({
    double width = 0,
    double height = 0,
    String statusText = 'Hoàn thành',
    EdgeInsetsGeometry margin = const EdgeInsets.all(0),
  }) =>
      Container(
        width: width,
        height: height,
        margin: margin,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: processColor(statusText)),
        child: Text(
          statusText,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 12,
              height: 1.5),
        ),
      );
  Color processColor(String string) {
    switch (string) {
      case 'Chuẩn bị' '':
        return Colors.grey;
      case 'Rất cao':
        return Colors.red;
      case 'Cao':
        return Colors.orange;
      case 'Đang tiến hành':
        return const Color.fromARGB(255, 0, 137, 215);
      case 'Vừa':
        return const Color.fromARGB(255, 0, 137, 215);
      case 'Hoàn thành':
        return const Color.fromARGB(255, 36, 161, 72);
      case 'Thấp':
        return const Color.fromARGB(255, 36, 161, 72);
      case 'Rất thấp':
        return const Color.fromARGB(255, 56, 215, 102);
      default:
        return Colors.black;
    }
  }
}
