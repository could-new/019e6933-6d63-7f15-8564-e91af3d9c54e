import 'package:flutter/material.dart';

void main() {
  runApp(const KoreanKidsApp());
}

class KoreanKidsApp extends StatelessWidget {
  const KoreanKidsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'تعلم الكورية للأطفال',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4DB6AC),
          brightness: Brightness.light,
        ),
        fontFamily: 'Changa', // General fallback, assuming standard sans-serif works well
        useMaterial3: true,
      ),
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}

class Category {
  final String id;
  final String titleAr;
  final String titleEn;
  final String titleKo;
  final Color color;
  final IconData icon;
  final List<Vocabulary> items;

  Category({
    required this.id,
    required this.titleAr,
    required this.titleEn,
    required this.titleKo,
    required this.color,
    required this.icon,
    required this.items,
  });
}

class Vocabulary {
  final String emoji;
  final String arabic;
  final String english;
  final String korean;
  final String pronunciationAr;
  final String pronunciationEn;

  Vocabulary({
    required this.emoji,
    required this.arabic,
    required this.english,
    required this.korean,
    required this.pronunciationAr,
    required this.pronunciationEn,
  });
}

final List<Category> appCategories = [
  Category(
    id: 'numbers',
    titleAr: 'الأرقام',
    titleEn: 'Numbers',
    titleKo: '숫자 (Sutja)',
    color: const Color(0xFFFF7043),
    icon: Icons.format_list_numbered_rtl,
    items: [
      Vocabulary(emoji: '1️⃣', arabic: 'واحد', english: 'One', korean: '하나', pronunciationAr: 'هانا', pronunciationEn: 'Hana'),
      Vocabulary(emoji: '2️⃣', arabic: 'اثنان', english: 'Two', korean: '둘', pronunciationAr: 'دول', pronunciationEn: 'Dul'),
      Vocabulary(emoji: '3️⃣', arabic: 'ثلاثة', english: 'Three', korean: '셋', pronunciationAr: 'سيت', pronunciationEn: 'Set'),
      Vocabulary(emoji: '4️⃣', arabic: 'أربعة', english: 'Four', korean: '넷', pronunciationAr: 'نيت', pronunciationEn: 'Net'),
      Vocabulary(emoji: '5️⃣', arabic: 'خمسة', english: 'Five', korean: '다섯', pronunciationAr: 'داسوت', pronunciationEn: 'Daseot'),
      Vocabulary(emoji: '6️⃣', arabic: 'ستة', english: 'Six', korean: '여섯', pronunciationAr: 'يوسوت', pronunciationEn: 'Yeoseot'),
      Vocabulary(emoji: '7️⃣', arabic: 'سبعة', english: 'Seven', korean: '일곱', pronunciationAr: 'إيلجوب', pronunciationEn: 'Ilgop'),
      Vocabulary(emoji: '8️⃣', arabic: 'ثمانية', english: 'Eight', korean: '여덟', pronunciationAr: 'يودول', pronunciationEn: 'Yeodeol'),
      Vocabulary(emoji: '9️⃣', arabic: 'تسعة', english: 'Nine', korean: '아홉', pronunciationAr: 'آهوب', pronunciationEn: 'Ahop'),
      Vocabulary(emoji: '🔟', arabic: 'عشرة', english: 'Ten', korean: '열', pronunciationAr: 'يول', pronunciationEn: 'Yeol'),
      Vocabulary(emoji: '💯', arabic: 'مائة', english: 'Hundred', korean: '백', pronunciationAr: 'بيك', pronunciationEn: 'Baek'),
    ],
  ),
  Category(
    id: 'animals',
    titleAr: 'الحيوانات',
    titleEn: 'Animals',
    titleKo: '동물 (Dongmul)',
    color: const Color(0xFF66BB6A),
    icon: Icons.pets,
    items: [
      Vocabulary(emoji: '🐱', arabic: 'قطة', english: 'Cat', korean: '고양이', pronunciationAr: 'جويانجي', pronunciationEn: 'Goyangi'),
      Vocabulary(emoji: '🐶', arabic: 'كلب', english: 'Dog', korean: '강아지', pronunciationAr: 'كانغاجي', pronunciationEn: 'Gangaji'),
      Vocabulary(emoji: '🐘', arabic: 'فيل', english: 'Elephant', korean: '코끼리', pronunciationAr: 'كوكيـري', pronunciationEn: 'Kokkiri'),
      Vocabulary(emoji: '🦁', arabic: 'أسد', english: 'Lion', korean: '사자', pronunciationAr: 'ساجا', pronunciationEn: 'Saja'),
      Vocabulary(emoji: '🐯', arabic: 'نمر', english: 'Tiger', korean: '호랑이', pronunciationAr: 'هورانجي', pronunciationEn: 'Horangi'),
      Vocabulary(emoji: '🐻', arabic: 'دب', english: 'Bear', korean: '곰', pronunciationAr: 'جوم', pronunciationEn: 'Gom'),
      Vocabulary(emoji: '🐰', arabic: 'أرنب', english: 'Rabbit', korean: '토끼', pronunciationAr: 'توكي', pronunciationEn: 'Tokki'),
      Vocabulary(emoji: '🐦', arabic: 'طائر', english: 'Bird', korean: '새', pronunciationAr: 'سي', pronunciationEn: 'Sae'),
      Vocabulary(emoji: '🐟', arabic: 'سمكة', english: 'Fish', korean: '물고기', pronunciationAr: 'مولجوجي', pronunciationEn: 'Mulgogi'),
      Vocabulary(emoji: '🐒', arabic: 'قرد', english: 'Monkey', korean: '원숭이', pronunciationAr: 'وونسونجي', pronunciationEn: 'Wonsungi'),
      Vocabulary(emoji: '🐎', arabic: 'حصان', english: 'Horse', korean: '말', pronunciationAr: 'مال', pronunciationEn: 'Mal'),
      Vocabulary(emoji: '🐄', arabic: 'بقرة', english: 'Cow', korean: '소', pronunciationAr: 'سو', pronunciationEn: 'So'),
    ],
  ),
  Category(
    id: 'clothes',
    titleAr: 'الملابس',
    titleEn: 'Clothes',
    titleKo: '옷 (Ot)',
    color: const Color(0xFF29B6F6),
    icon: Icons.checkroom,
    items: [
      Vocabulary(emoji: '👕', arabic: 'قميص', english: 'Shirt', korean: '셔츠', pronunciationAr: 'شوتشو', pronunciationEn: 'Syeocheu'),
      Vocabulary(emoji: '👖', arabic: 'بنطال', english: 'Pants', korean: '바지', pronunciationAr: 'باجي', pronunciationEn: 'Baji'),
      Vocabulary(emoji: '👗', arabic: 'فستان', english: 'Dress', korean: '원피스', pronunciationAr: 'وونبيسو', pronunciationEn: 'Wonpiseu'),
      Vocabulary(emoji: '👞', arabic: 'حذاء', english: 'Shoes', korean: '신발', pronunciationAr: 'شينبال', pronunciationEn: 'Sinbal'),
      Vocabulary(emoji: '🧢', arabic: 'قبعة', english: 'Hat', korean: '모자', pronunciationAr: 'موجا', pronunciationEn: 'Moja'),
      Vocabulary(emoji: '🧦', arabic: 'جوارب', english: 'Socks', korean: '양말', pronunciationAr: 'يانجمال', pronunciationEn: 'Yangmal'),
      Vocabulary(emoji: '🧥', arabic: 'سترة', english: 'Jacket', korean: '재킷', pronunciationAr: 'جيكيت', pronunciationEn: 'Jaekit'),
      Vocabulary(emoji: '👚', arabic: 'تنورة', english: 'Skirt', korean: '치마', pronunciationAr: 'تشيما', pronunciationEn: 'Chima'),
      Vocabulary(emoji: '🧣', arabic: 'وشاح', english: 'Scarf', korean: '목도리', pronunciationAr: 'موكدوري', pronunciationEn: 'Mokdori'),
      Vocabulary(emoji: '🧤', arabic: 'قفازات', english: 'Gloves', korean: '장갑', pronunciationAr: 'جانجاب', pronunciationEn: 'Janggap'),
    ],
  ),
  Category(
    id: 'colors',
    titleAr: 'الألوان',
    titleEn: 'Colors',
    titleKo: '색깔 (Saekkkal)',
    color: const Color(0xFFAB47BC),
    icon: Icons.color_lens,
    items: [
      Vocabulary(emoji: '🔴', arabic: 'أحمر', english: 'Red', korean: '빨간색', pronunciationAr: 'بالجان سيك', pronunciationEn: 'Ppalgansaek'),
      Vocabulary(emoji: '🔵', arabic: 'أزرق', english: 'Blue', korean: '파란색', pronunciationAr: 'باران سيك', pronunciationEn: 'Paransaek'),
      Vocabulary(emoji: '🟢', arabic: 'أخضر', english: 'Green', korean: '초록색', pronunciationAr: 'تشوروك سيك', pronunciationEn: 'Choroksaek'),
      Vocabulary(emoji: '🟡', arabic: 'أصفر', english: 'Yellow', korean: '노란색', pronunciationAr: 'نوران سيك', pronunciationEn: 'Noransaek'),
      Vocabulary(emoji: '⚫', arabic: 'أسود', english: 'Black', korean: '검은색', pronunciationAr: 'جومون سيك', pronunciationEn: 'Geomeunsaek'),
      Vocabulary(emoji: '⚪', arabic: 'أبيض', english: 'White', korean: '하얀색', pronunciationAr: 'هايان سيك', pronunciationEn: 'Hayansaek'),
      Vocabulary(emoji: '🟣', arabic: 'أرجواني', english: 'Purple', korean: '보라색', pronunciationAr: 'بورا سيك', pronunciationEn: 'Borasaek'),
      Vocabulary(emoji: '🟠', arabic: 'برتقالي', english: 'Orange', korean: '주황색', pronunciationAr: 'جوهوانج سيك', pronunciationEn: 'Juhwangsaek'),
      Vocabulary(emoji: '🩷', arabic: 'وردي', english: 'Pink', korean: '분홍색', pronunciationAr: 'بونهونج سيك', pronunciationEn: 'Bunhongsaek'),
      Vocabulary(emoji: '🟤', arabic: 'بني', english: 'Brown', korean: '갈색', pronunciationAr: 'جال سيك', pronunciationEn: 'Galsaek'),
    ],
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3E5F5),
      appBar: AppBar(
        title: const Text(
          'أصدقاء الكورية 🇰🇷',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'ماذا تريد أن تتعلم اليوم؟',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    int crossAxisCount = constraints.maxWidth > 600 ? 4 : 2;
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        childAspectRatio: 0.85,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                      ),
                      itemCount: appCategories.length,
                      itemBuilder: (context, index) {
                        final category = appCategories[index];
                        return CategoryCard(category: category);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryScreen(category: category),
          ),
        );
      },
      borderRadius: BorderRadius.circular(24),
      child: Container(
        decoration: BoxDecoration(
          color: category.color,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: category.color.withOpacity(0.4),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              category.icon,
              size: 56,
              color: Colors.white,
            ),
            const SizedBox(height: 16),
            Text(
              category.titleAr,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '${category.titleEn} • ${category.titleKo}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryScreen extends StatelessWidget {
  final Category category;

  const CategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text(category.titleAr),
        backgroundColor: category.color,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: category.items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: VocabularyCard(
                vocabulary: category.items[index],
                color: category.color,
              ),
            );
          },
        ),
      ),
    );
  }
}

class VocabularyCard extends StatelessWidget {
  final Vocabulary vocabulary;
  final Color color;

  const VocabularyCard({
    super.key,
    required this.vocabulary,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  vocabulary.emoji,
                  style: const TextStyle(fontSize: 40),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        vocabulary.arabic,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: Text(
                          vocabulary.english,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        vocabulary.korean,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: color,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'نطق: ${vocabulary.pronunciationAr}',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            vocabulary.pronunciationEn,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
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
