import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sodes_ui/sodes/ui/screens/screensodes.dart';


class NavBarUser extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavBarUser();
  }
}

class _NavBarUser extends State<NavBarUser> {
  int indexTap = 0;
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0, keepPage: true);

    void onTapTapped(int index) {
      setState(() {
        indexTap = index;
        controller.animateToPage(index,
            duration: Duration(milliseconds: 200), curve: Curves.ease);
      });
    }

    void pageChanged(int index) {
      setState(() {
        indexTap = index;
      });
    }

    final pageView = PageView(
      controller: controller,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[ScreenSodes(), ],
    );

    return Scaffold(
      body: pageView,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color(0xFF1E2843), primaryColor: Color(0xFFF78C94)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            onTapTapped(index);
          },
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.dashboard), title: Text(""), backgroundColor: Colors.white),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.add_circle), title: Text("")),
            BottomNavigationBarItem(icon: Icon(MdiIcons.signalCellularOutline), title: Text("")),
            BottomNavigationBarItem(icon: Icon(MdiIcons.accountOutline), title: Text(""))
          ],
        ),
      ),
    );
  }
}
