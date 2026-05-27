import 'package:flutter/material.dart';

void main() {
  runApp(const KoreanLearningApp());
}

class KoreanLearningApp extends StatelessWidget {
  const KoreanLearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'تعلم الكورية للأطفال',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
          primary: Colors.orange,
          secondary: Colors.lightBlue,
        ),
        fontFamily: 'Comic Sans MS', // Fun font if available, fallback otherwise
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: const Text(
          'تعلم الكورية 🇰🇷',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              int crossAxisCount = constraints.maxWidth > 600 ? 4 : 2;
              return GridView.count(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: const [
                  CategoryCard(
                    title: 'الأرقام',
                    icon: Icons.format_list_numbered,
                    color: Colors.blue,
                    route: '/numbers',
                  ),
                  CategoryCard(
                    title: 'الألوان',
                    icon: Icons.color_lens,
                    color: Colors.red,
                    route: '/colors',
                  ),
                  CategoryCard(
                    title: 'الحيوانات',
                    icon: Icons.pets,
                    color: Colors.green,
                    route: '/animals',
                  ),
                  CategoryCard(
                    title: 'العائلة',
                    icon: Icons.family_restroom,
                    color: Colors.purple,
                    route: '/family',
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final String route;

  const CategoryCard({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryScreen(title: title, categoryColor: color),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
          border: Border.all(color: color.withOpacity(0.5), width: 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 60,
              color: color,
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryScreen extends StatelessWidget {
  final String title;
  final Color categoryColor;

  const CategoryScreen({
    super.key,
    required this.title,
    required this.categoryColor,
  });

  List<LearningItem> _getItems() {
    if (title == 'الأرقام') {
      return const [
        LearningItem(korean: '하나 (Hana)', arabic: 'واحد (1)', icon: Icons.looks_one),
        LearningItem(korean: '둘 (Dul)', arabic: 'اثنان (2)', icon: Icons.looks_two),
        LearningItem(korean: '셋 (Set)', arabic: 'ثلاثة (3)', icon: Icons.looks_3),
        LearningItem(korean: '넷 (Net)', arabic: 'أربعة (4)', icon: Icons.looks_4),
      ];
    } else if (title == 'الألوان') {
      return const [
        LearningItem(korean: '빨간색 (Ppalgansaek)', arabic: 'أحمر', color: Colors.red),
        LearningItem(korean: '파란색 (Paransaek)', arabic: 'أزرق', color: Colors.blue),
        LearningItem(korean: '노란색 (Noransaek)', arabic: 'أصفر', color: Colors.yellow),
        LearningItem(korean: '초록색 (Choroksaek)', arabic: 'أخضر', color: Colors.green),
      ];
    } else if (title == 'الحيوانات') {
      return const [
        LearningItem(korean: '고양이 (Goyangi)', arabic: 'قطة', icon: Icons.pets),
        LearningItem(korean: '개 (Gae)', arabic: 'كلب', icon: Icons.cruelty_free),
        LearningItem(korean: '새 (Sae)', arabic: 'طائر', icon: Icons.flutter_dash),
        LearningItem(korean: '물고기 (Mulgogi)', arabic: 'سمكة', icon: Icons.set_meal),
      ];
    } else {
      return const [
        LearningItem(korean: '엄마 (Eomma)', arabic: 'أمي', icon: Icons.pregnant_woman),
        LearningItem(korean: '아빠 (Appa)', arabic: 'أبي', icon: Icons.man),
        LearningItem(korean: '형/오빠 (Hyeong/Oppa)', arabic: 'أخي الأكبر', icon: Icons.boy),
        LearningItem(korean: '누나/언니 (Nuna/Eonni)', arabic: 'أختي الكبرى', icon: Icons.girl),
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    final items = _getItems();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: categoryColor,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              margin: const EdgeInsets.only(bottom: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: items[index].color ?? categoryColor.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                      child: items[index].icon != null
                          ? Icon(
                              items[index].icon,
                              size: 30,
                              color: items[index].color != null ? Colors.white : categoryColor,
                            )
                          : null,
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            items[index].korean,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            items[index].arabic,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class LearningItem {
  final String korean;
  final String arabic;
  final IconData? icon;
  final Color? color;

  const LearningItem({
    required this.korean,
    required this.arabic,
    this.icon,
    this.color,
  });
}
