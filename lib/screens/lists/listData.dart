import 'package:flutter/material.dart';
import 'package:yanvar31/model2/service.dart';
import 'package:yanvar31/screens/ayollar/ayollar.dart';
import 'package:yanvar31/screens/duolar/duolar.dart';
import 'package:yanvar31/screens/kalima/kalima.dart';
import 'package:yanvar31/screens/qiblah/qiblah.dart';
import 'package:yanvar31/screens/quron/quronpage.dart';
import 'package:yanvar31/screens/suralar/suralarpage.dart';
import 'package:yanvar31/screens/taqvim/taqvimPage.dart';
import 'package:yanvar31/screens/tasbeh/namozoqish.dart';
import 'package:yanvar31/screens/tasbeh/tasbehPage.dart';

List<bool> notifIconColor = [true, true, true, true, true, true];

List MenuIcon = [
  {
    "img": "assets/img/menuIcon/prayer.png",
    "name": "Namoz",
    "page": NamozOqish()
  },
  {
    "img": "assets/img/menuIcon/kaaba.png",
    "name": "Qibla",
    "page": KiblahPage(),
  },
  {
    "img": "assets/img/menuIcon/koran.png",
    "name": "Quron",
    "page": QuronPage()
  },
  {
    "img": "assets/img/menuIcon/moon.png",
    "name": "Suralar",
    "page": SuralarPage()
  },
  {
    "img": "assets/img/menuIcon/ramadan.png",
    "name": "Taqvimi",
    "page": TaqvimPage()
  },
  {
    "img": "assets/img/menuIcon/woman.png",
    "name": "Ayollar uchun",
    "page": AyollarPage()
  },
  {
    "img": "assets/img/menuIcon/tasbeh.png",
    "name": "Tasbeh",
    "page": const TasbehPage()
  },
  {
    "img": "assets/img/menuIcon/prayer.png",
    "name": "6 Diniy Kalima",
    "page": const KalimaPage()
  },
  {
    "img": "assets/img/menuIcon/prayer.png",
    "name": "Namoz",
  }
];

List driwerList = [
  {
    "name": Text(
      "Biz haqimizda",
      style: TextStyle(fontSize: 16, color: Colors.white),
    ),
    "icon": Icon(
      Icons.light,
      color: Colors.white,
    )
  },
  {
    "name": Text(
      "Biz telegramda",
      style: TextStyle(fontSize: 16, color: Colors.white),
    ),
    "icon": Icon(
      Icons.light,
      color: Colors.white,
    )
  },
  {
    "name": Text(
      "Ilova haqida",
      style: TextStyle(fontSize: 16, color: Colors.white),
    ),
    "icon": Icon(
      Icons.light,
      color: Colors.white,
    )
  },
  // {"name": "Ilova haqida", "icon": Icon(Icons.light)},
  // {"name": "Ilova haqida", "icon": Icon(Icons.light)},
  // {"name": "Ilova haqida", "icon": Icon(Icons.light)}
];

List namozName = [
  "Bomdod",
  "Quyosh chiqishi",
  "Peshin",
  "Asr",
  "Shom",
  "Hufton"
];

List oltiKalima = [
  {
    "name": "1.Kalimai toyyiba (eng pok kalima)",
    "text":
        "لَا إِلَهَ إِلَّا اللهُ مُحَمَّدٌ رَسُولُ اللهِ. \n\n«Laa ilaaha illallohu Muhammadur Rosuululloh» \n\nАllohdan oʼzga iloh yoʼq, Muhammad Аllohning Rasulidir."
  },
  {
    "name": "2. Kalimai shahodat (guvohlik kalimasi, iqrorlik kalimasi)",
    "text":
        "أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا اللهُ، وَأَشْهَدُ أَنَّ مُحَمَّدًا عَبْدُهُ وَرَسُولُهُ.\n\n«Аshhadu allaa ilaaha illallohu va ashhadu anna Muhammadan ʼabduhu va Rosuuluh»\n\nАllohdan oʼzga iloh yoʼqligiga va Muhammad Аllohning bandasi va Rasuli ekaniga guvohlik beraman."
  },
  {
    "name":
        "3. Kalimai tavhid (tavhid, yaʼni Аllohning birligiga iqrorlik kalimasi)",
    "text":
        "أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا اللهُ، وَحْدَهُ لَا شَرِيكَ لَهُ،\n\nلَهُ الْمُلْكُ، ولَهُ الْحَمْدُ، يُحْيِي وَيُمِيتُ، وَهُوَ حَيٌّ لَا يَمُوتُ،\n\nبِيَدِهِ الْخَيْرُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ.\n\n«Аshhadu allaa ilaaha illallohu vahdahu laa sharika lah, lahul mulku va lahul hamd, yuhyii va yumiyt va huva hayyul laa yamuut, biyadihil xoyr va huva ʼalaa kulli shayʼin qodiyr».\n\nАllohdan oʼzga iloh yoʼqligiga guvohlik beraman. Аllohning sherigi yoʼqdir, barcha mulk Unikidir, maqtovlar Ungadir, U tiriltiradi va oʼldiradi, ammo Oʼzi tirikdir, oʼlmaydi. Yaxshilik Uning ixtiyoridadir va U hamma narsaga qodirdir."
  },
  {
    "name": "4. Kalimai raddi kufr (kufrni rad etish kalimasi)",
    "text":
        "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ أَنْ أُشْرِكَ بِكَ شَيْئًا وَأَنَا أَعْلَمُ،\n\nوَأَسْتَغْفِرُكَ لِمَا لَا أَعْلَمُ، إِنَّكَ أَنْتَ عَلَّامُ الْغُيُوبِ.\n\n«Аllohumma! Inni aʼuuzu bika min an ushrika bika shayʼan va ana aʼlam, va astagʼfiruka lima laa aʼlam. Innaka anta ʼallamul gʼuyuub».\n\nАllohim! Oʼzim bilib turib Senga biror narsani sherik qilishimdan asrashingni soʼrayman. Bilmay turib sherik qilib qoʼygan boʼlsam, kechirishingni soʼrayman. Аlbatta Sen gʼayblarni biluvchisan!"
  },
  {
    "name": "5. Kalimai istigʼfor (gunoh kechirilishini soʼrash kalimasi)",
    "text":
        "أَسْتَغْفِرُ اللهَ، أَسْتَغْفِرُ اللهَ، أَسْتَغْفِرُ اللهَ تَعَالَى مِنْ كُلِّ ذَنْبٍ أَذْنَبْتُهُ عَمْدًا أَوْ خَطَأً، سِرًّا أَوْ عَلَانِيَةً، وَأَتُوبُ إِلَيْهِ مِنَ الذَّنْبِ الَّذِي أَعْلَمُ، وَمِنَ الذَّنْبِ الَّذِي لَا أَعْلَمُ، إِنَّكَ أَنْتَ عَلَّامُ الْغُيُوبِ.\n\n«Аstagʼfirulloh, astagʼfirulloh, astagʼfirulloha taʼala min kulli zambin aznabtahu ʼamdan av xotoan, sirron av ʼalaniyya, va atuubu ilayhi minaz-zambillazii aʼlamu va minaz-zambillazii laa aʼlam, innaka anta ʼallamul gʼuyuub».\n\nАllohdan gunohlarimni kechishini soʼrayman, Аllohdan gunohlarimni kechishini soʼrayman, Аlloh taolodan ataylab yo adashib, yashirin yo oshkora qilgan barcha gunohlarimni kechishini soʼrayman. Oʼzim bilgan va bilmagan gunohlardan Unga tavba qilaman. Аlbatta Sen gʼayblarni biluvchisan!"
  },
  {
    "name": "6. Kalimai tamjid (ulugʼlash kalimasi)",
    "text":
        "سُبْحَانَ اللهِ، وَالْحَمْدُ لِلَّهِ، وَلَا إِلَهَ إِلَّا اللهُ، وَاللهُ أَكْبَرُ،\n\nوَلَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللهِ الْعَلِيِّ الْعَظِيمِ،\n\nمَا شَاءَ اللهُ كَانَ، وَمَا لَمْ يَشَأْ لَمْ يَكُنْ.\n\n«Subhaanallohi, valhamdulillaahi, va laa ilaaha illallohu, vallohu akbar.\n\nLaa havla va laa quvvata illaa billaahil ʼaliyyil ʼaziym.\n\nMaa shaa Аllohu kaana va maa lam yashaʼ lam yakun».\n\nАllohning aybu nuqsoni yoʼq va maqtov Аllohgadir. Аllohdan oʼzga iloh yoʼqdir. Аlloh ulugʼdir, mutloq kuch-quvvat qudratli va buyuk Аllohdan oʼzgada yoʼqdir. Аlloh nimani xohlasa – boʼladi, nimani xohlamasa – boʼlmaydi.\n\nSayyidul‑istigʼfor (istigʼforlarning ulugʼi):\n\nاللَّهُمَّ أَنْتَ رَبِّي لَا إِلَهَ إِلَّا أَنْتَ، خَلَقْتَنِي وَأَنَا عَبْدُكَ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ، أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ، وَأَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ، وَأَبُوءُ بِذَنْبِي فَاغْفِرْ لِي فَإِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ.\n\n«Аllohumma! Аnta Robbii, laa ilaaha illa anta xolaqtanii, va ana ʼabduka va ana ʼalaa ahdika va vaʼdika mastatoʼtu, aʼuuzu bika min sharri maa sonaʼtu, abuuu laka biniʼmatika ʼalayya va abuuu bizanbii, fagʼfirlii! Fainnahu laa yagʼfiruz-zunuuba illa anta».\n\nАllohim! Sen Robbimsan (tarbiya qilguvchimsan), Sendan oʼzga iloh yoʼqdir, meni yaratding va men Sening bandangman, qodir boʼlganimcha Sening ahdingda va vaʼdangdadurman. Qilgan ishlarimning yomonidan panoh soʼrayman. Menga bergan neʼmatlaringni eʼtirof qilaman va gunohlarimni ham tan olaman. Zero, Sendan oʼzga gunohlarni kechguvchi Zot yoʼqdir».\n\nShaddod ibn Аvs roziyallohu anhu Rasululloh alayhissalomdan rivoyat qilishlaricha, kishi kech kirganda komil ishonch bilan ushbu duoni oʼqisa va shu kechada vafot etsa, jannatga kiradi. Tong otganda oʼqib shu kuni vafot etsa ham, jannatga kiradi (Imom Buxoriy rivoyat qilgan)."
  }
];


var keyingiNamoz;