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
        Expanded(
            child: Container(
          margin: const EdgeInsets.only(top: 3, bottom: 20),
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) => InfoCard(),
          ),
        ))
      ],
    );
  }

  Widget InfoCard() {
    return Card(
      color: const Color.fromARGB(255, 243, 243, 243),
      margin: const EdgeInsets.fromLTRB(20, 14, 20, 14),
      child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.build),
                  const Text('data'),
                  const Text('data'),
                  Container(
                    color: Colors.red,
                    width: 20,
                  )
                ],
              ),
              const Divider(
                thickness: 1,
                indent: 0,
                endIndent: 0,
                color: Colors.amberAccent,
              ),
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
}
