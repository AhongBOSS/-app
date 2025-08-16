import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100), // AppBar 高度
        child: AppBar(
          centerTitle: true, // 標題置中
          title: const Text(
            '一中吃什麼',
            style: TextStyle(
              fontSize: 40, // 字體加大
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color(0xFFE3F2FD),
          elevation: 0, // 去除陰影
        ),
      ),
      backgroundColor: const Color(0xFFE3F2FD),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24), // 讓整體向上偏移
              // AppBar 下方，新增搜尋輸入框
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.blue),
                    hintText: '搜尋餐廳名稱或菜系',
                    filled: true,
                    fillColor: Color(0xFFBBDEFB),
                    contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: const TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                '不知道吃甚麼？點這裡！',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey, // 文字顏色改為灰色
                ),
              ),
              const SizedBox(height: 16), // 按鈕與文字間距
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: 350,
                  height: 120,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF16B1EF), // 淺藍色，比背景深一點
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(fontSize: 40), // 文字大小
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16), // 圓角
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const InputPage()),
                      );
                    },
                    child: const Text('隨機推薦'),
                  ), //隨機按鈕
                ),
              ),
              const SizedBox(height: 24), // 按鈕與下方按鈕群間距
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 110,
                    height: 100,
                    child: ElevatedButton( // 餐廳資訊按鈕
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF16B1EF), // 淺藍色，比背景深一點
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(fontSize: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        // TODO: 餐廳資訊功能
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.restaurant, size: 40, color: Colors.white),
                          const SizedBox(height: 4),
                          Flexible(
                            child: Text(
                              '餐廳資訊',
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 14),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  SizedBox(
                    width: 110,
                    height: 100,
                    child: ElevatedButton( // 篩選按鈕
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF16B1EF),
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(fontSize: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        // TODO: 篩選功能
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.tune, size: 40, color: Colors.white),
                          const SizedBox(height: 4),
                          Flexible(
                            child: Text(
                              '篩選',
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 16),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  SizedBox(
                    width: 110,
                    height: 100,
                    child: ElevatedButton( // 管理按鈕
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF16B1EF),
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(fontSize: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        // TODO: 管理功能
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.settings, size: 40, color: Colors.white),
                          const SizedBox(height: 4),
                          Flexible(
                            child: Text(
                              '管理',
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 16),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80, // 導覽列高度加大
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFFBBDEFB),
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          iconSize: 36, // 圖示加大
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '首頁',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '搜尋',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '收藏',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '設定',
            ),
          ],
          currentIndex: 0, // 目前選中首頁
          onTap: (index) {
            // TODO: 可根據 index 切換頁面
          },
        ),
      ),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 80),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: 200,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('返回'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
