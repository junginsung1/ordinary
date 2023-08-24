import 'package:flutter/material.dart';
import 'package:mangonyang/main.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> titles = [
    Text('이지셀러'),
    Text('회사소개'),
    Text('템플릿'),
    Text('고객사례'),
    Text('요금'),
    Text('고객지원'),
    Text('로그인'),
    Text('무료시작하기'),
  ];

  void jung() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MyHomePage(
              title: '윤정',
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text('이지셀러'),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('이지셀러'),
                    SizedBox(
                      width: 20,
                    ),
                    DropdownButton(
                      underline: SizedBox.shrink(),
                      value: '회사소개',
                      items: const [
                        DropdownMenuItem(
                          child: Text("회사소개"),
                          value: "회사소개",
                        ),
                        DropdownMenuItem(
                          child: Text("연혁"),
                          value: "연혁",
                        ),
                        DropdownMenuItem(
                          child: Text("CEO"),
                          value: "CEO",
                        ),
                        DropdownMenuItem(
                          child: Text("경영철학"),
                          value: "경영철학",
                        ),
                        DropdownMenuItem(
                          child: Text("정책"),
                          value: "정책",
                        ),
                      ],
                      onChanged: (_) {},
                    ), // Text('회사소개'),
                    SizedBox(
                      width: 20,
                    ),
                    Text('템플릿'),
                    SizedBox(
                      width: 20,
                    ),
                    Text('고객사례'),
                    SizedBox(
                      width: 20,
                    ),
                    Text('요금'),
                    SizedBox(
                      width: 20,
                    ),
                    Text('고객지원'),
                  ],
                ),
                Row(
                  children: [
                    Text('로그인'),
                    SizedBox(
                      width: 20,
                    ),
                    Text('무료시작하기'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
