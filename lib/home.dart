import 'package:flutter/material.dart';
import 'package:mangonyang/main.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> titles = [
    const Text('이지셀러'),
    const Text('회사소개'),
    const Text('템플릿'),
    const Text('고객사례'),
    const Text('요금'),
    const Text('고객지원'),
    const Text('로그인'),
    const Text('무료시작하기'),
  ];

  void jung() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const MyHomePage(
              title: '윤정',
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text('이지셀러'),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('이지셀러'),
                    const SizedBox(
                      width: 20,
                    ),
                    DropdownButton(
                      underline: const SizedBox.shrink(),
                      value: '회사소개',
                      items: const [
                        DropdownMenuItem(
                          value: "회사소개",
                          child: Text("회사소개"),
                        ),
                        DropdownMenuItem(
                          value: "연혁",
                          child: Text("연혁"),
                        ),
                        DropdownMenuItem(
                          value: "CEO",
                          child: Text("CEO"),
                        ),
                        DropdownMenuItem(
                          value: "경영철학",
                          child: Text("경영철학"),
                        ),
                        DropdownMenuItem(
                          value: "정책",
                          child: Text("정책"),
                        ),
                      ],
                      onChanged: (_) {},
                    ), // Text('회사소개'),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text('템플릿'),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text('고객사례'),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text('요금'),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text('고객지원'),
                  ],
                ),
                const Row(
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
          Expanded(
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 2,
                color: Colors.blue,
                child: Center(
                  child: Text('컨테이너'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
