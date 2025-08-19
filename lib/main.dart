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
        preferredSize: const Size.fromHeight(80), // 減小AppBar高度
        child: AppBar(
          centerTitle: true,
          title: const Text(
            '一中吃什麼',
            style: TextStyle(
              fontSize: 32, // 減小字體
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color(0xFFE3F2FD),
          elevation: 0,
        ),
      ),
      backgroundColor: const Color(0xFFE3F2FD),
      body: Column( // 改用Column而非SingleChildScrollView
        children: [
          Expanded( // 使用Expanded讓內容填滿可用空間
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const SizedBox(height: 16), // 減少頂部間距
                  // 搜尋輸入框
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SizedBox(
                      height: 50, // 固定搜尋框高度
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: Colors.blue, size: 20),
                          hintText: '搜尋餐廳名稱或菜系',
                          filled: true,
                          fillColor: Color(0xFFBBDEFB),
                          contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        style: const TextStyle(fontSize: 16), // 減小字體
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    '不知道吃甚麼？點這裡！',
                    style: TextStyle(
                      fontSize: 20, // 減小字體
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 16),
                  // 隨機推薦按鈕
                  SizedBox(
                    width: 300, // 減小按鈕寬度
                    height: 80, // 減小按鈕高度
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF16B1EF),
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(fontSize: 28), // 減小字體
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const InputPage()),
                        );
                      },
                      child: const Text('隨機推薦'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // 三個功能按鈕
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 90, // 減小按鈕寬度
                        height: 80, // 減小按鈕高度
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF16B1EF),
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.all(8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.restaurant, size: 28, color: Colors.white),
                              const SizedBox(height: 4),
                              Text(
                                '餐廳資訊',
                                style: const TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 90,
                        height: 80,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF16B1EF),
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.all(8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.tune, size: 28, color: Colors.white),
                              const SizedBox(height: 4),
                              Text(
                                '篩選',
                                style: const TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 90,
                        height: 80,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF16B1EF),
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.all(8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.settings, size: 28, color: Colors.white),
                              const SizedBox(height: 4),
                              Text(
                                '管理',
                                style: const TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
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
        ],
      ),
      bottomNavigationBar: BottomNavigationBar( // 移除Container包裝，使用系統預設高度
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFBBDEFB),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 24,
        selectedFontSize: 12,
        unselectedFontSize: 12,
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
        currentIndex: 0,
        onTap: (index) {
          // TODO: 可根據 index 切換頁面
        },
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
