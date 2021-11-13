import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ms_tromm/ui/theme/dimens.dart';

class ControlRecommendPage extends StatefulWidget {
  const ControlRecommendPage({Key? key}) : super(key: key);

  @override
  _ControlRecommendPageState createState() => _ControlRecommendPageState();
}

class _ControlRecommendPageState extends State<ControlRecommendPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: _getRecommendText("홍길동"),
          ),
          Container(
            child: _getRecommendList(),
          )
        ],
      ),
    );
  }

  _getRecommendText(String name) {
    return Text(
      '$name님 안녕하세요!\n현재 집 안 온도는 22℃로 유지되고\n있습니다.\n스타일러 내에 정장이 있습니다.\n고급의류 코스를 추천합니다!',
      style: const TextStyle(
          fontSize: MyDimens.FontSize_ExtraMedium, fontWeight: FontWeight.bold),
    );
  }

  _getRecommendList() {
    final List<String> entries = <String>['', '', ''];
    final List<int> colorCodes = <int>[200, 400, 600];

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.blue[colorCodes[index]]),
          height: 100,
          child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // TODO : Add Image for recommendation
                  Text(entries[index],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MyDimens.FontSize_Large,
                          color: Colors.white)),
                ],
              )),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
