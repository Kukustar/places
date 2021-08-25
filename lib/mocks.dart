import 'package:places/domain/sight.dart';

final List<Sight> mocks = <Sight>[
  Sight(
      name: 'Кёнигсбергский собор',
      lat: '54°42′22″',
      lon: '20°30′42″',
      url: 'https://s3.nat-geo.ru/images/2019/5/16/b62b68fb9193448e8a3ea445f7f366c6.max-1200x800.jpg',
      details:
          'Домский собор Богоматери и Святого Адальберта — недействующий кафедральный собор, расположенный в историческом районе города Калининграда — Кнайпхофе (ныне официально именуемом как «Остров Иммануила Канта»), одной из островных частей бывшего восточно-прусского города Кёнигсберга.',
      type: 'Собор'),
  Sight(
      name: 'Куршская коса',
      lat: '55°16′28″',
      lon: '20°58′15″',
      url: 'https://mogura.ru/articles/wp-content/uploads/2019/05/s1200.jpg',
      details: 'Узкая и длинная песчаная полоса суши (коса) саблевидной формы, отделяющая Куршский залив от Балтийского моря. Простирается от города Зеленоградск Калининградской области до города Клайпеда (Смильтине, Литва). В 2000 году включена в список Всемирного наследия ЮНЕСКО.',
      type: 'Национальный парк'
  ),
  Sight(
      name: 'Куршская коса',
      lat: '55°16′28″',
      lon: '20°58′15″',
      url: 'https://mogura.ru/articles/wp-content/uploads/2019/05/s1200.jpg',
      type: 'Национальный парк',

      dateToVisit: 'Запланировано на 12 окт. 2020',
      workTime: 'закрыто до 09:00'

  ),
  Sight(
      name: 'Куршская коса',
      lat: '55°16′28″',
      lon: '20°58′15″',
      url: 'https://mogura.ru/articles/wp-content/uploads/2019/05/s1200.jpg',
      type: 'Национальный парк',

      dateVisit: 'Цель достигнута 12 окт. 2020',
      workTime: 'закрыто до 09:00'
  )

];
