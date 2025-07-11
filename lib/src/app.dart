MaterialApp (
  theme = ThemeData(
    primaryColor: const Color(0xFFFF6f0f),
    bottomNavigationBarTheme: const BottomNavigationBarTheme(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor : Color(0xFFFF6f0f)
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 18, fontFamily: 'Noto Sans'),
      bodyMedium: TextStyle(fontSize: 14, fontFamily: 'Noto Sans'),
    ),
  ),
  initialRoute = '/',
)