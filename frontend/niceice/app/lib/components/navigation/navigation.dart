
import 'package:app/common/common.dart';
import 'package:app/components/personal_info/persional_info.dart';
import 'package:app/components/home/home.dart';

class AppNavigation extends StatefulWidget {
  AppNavigation({Key key}) : super(key: key);

  @override
  _AppNavigationBarState createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigation> {
  int _currentPage = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[HomePage(), MinePage()],
        controller: _pageController,
        physics: BouncingScrollPhysics(),
        onPageChanged: (pageIndex) {
          setPageChangedStatus(pageIndex);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: Configs.getInstance().homeBottomNavigationName, icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: Configs.getInstance().mineBottomNavigationName, icon: Icon(Icons.person))
        ],
        currentIndex: _currentPage,
        onTap: (pageIndex) {
          _pageController.animateToPage(
            pageIndex,
            duration: Duration(milliseconds: 10),
            curve: Curves.easeIn,
          );
          setPageChangedStatus(pageIndex);
        },
      ),
    );
  }

  void setPageChangedStatus(int pageIndex) {
    setState(() {
      _currentPage = pageIndex;
    });
  }
}
