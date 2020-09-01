import 'package:example_theme/theme/theme_notifier.dart';
import 'package:example_theme/theme/theme_svg_picture.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class ListScreen extends StatelessWidget {
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (BuildContext context) => ListScreen());
  }

  @override
  Widget build(BuildContext context) {
    var theme = Provider.of<ThemeNotifier>(context);
    var baseBackground = (theme.brightness == Brightness.light) ? Colors.white : Colors.grey.shade900;
    var btnBack = (theme.brightness == Brightness.light) ? Colors.white : Colors.grey.shade700;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.info_outline),
        onPressed: () {},
      ),
      backgroundColor: Color.alphaBlend(Theme.of(context).primaryColor.withOpacity(0.05), baseBackground),
      appBar: AppBar(title: Text(theme.name)),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 50),
        children: [
          SizedBox(height: 40),
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.alphaBlend(Theme.of(context).primaryColor.withOpacity(0.35), baseBackground)),
            child: ThemeSvgPicture(asset: 'assets/svg/branch.svg'),
          ),
          SizedBox(height: 40),
          MaterialButton(
            color: btnBack,
            onPressed: () {
              theme.change(Color(0xff034694), Colors.white, Brightness.light, 'Chelsea F.C.', null);
            },
            child: Text('Chelsea F.C.'),
          ),
          SizedBox(height: 16),
          MaterialButton(
            color: btnBack,
            onPressed: () {
              theme.change(Color(0xffef0107), Color(0xff023474), Brightness.light, 'Arsenal F.C', null);
            },
            child: Text('Arsenal F.C'),
          ),
          SizedBox(height: 16),
          MaterialButton(
            color: btnBack,
            onPressed: () {
              theme.change(Color(0xff7f0000), Color(0xff2dafe5), Brightness.dark, 'West Ham United F.C.', null);
            },
            child: Text('West Ham United F.C.'),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
