
import 'app_package/libraries.dart';

class MultipleTabs extends StatefulWidget {

  late final bool isDark;
  final VoidCallback toggleTheme;

  MultipleTabs({
    super.key,
    required this.isDark,
    required this.toggleTheme
  });

  @override
  State<MultipleTabs> createState() => _MultipleTabsState();
}

class _MultipleTabsState extends State<MultipleTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(

          actions: [
            IconButton(
              onPressed: widget.toggleTheme,
                icon: widget.isDark? Icon(Icons.dark_mode,size: 25,) : Icon(Icons.light_mode_rounded,size: 25),
            )
          ],

          title: Text(
            "Dynamic UI",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic
            ),),

          centerTitle: true,

          bottom: TabBar(
            padding: EdgeInsets.all(2),
            labelColor: Colors.red,
            unselectedLabelStyle: TextStyle(color: Colors.purple,fontSize: 17),
            indicatorColor: Colors.green,
            isScrollable: true,
            dividerColor: Colors.red,
            dividerHeight: 3,
            unselectedLabelColor: Colors.white,

            tabs:[

              const Tab(text: "Color and size Change Container",),
              const Tab(text: "color and size change Text",),
              const Tab(text: "Emoji changer",),
              const Tab(text: "StylishFont",),
              const Tab(text: "Shape Changer")
            ],
          ),
        ),
        body: const TabBarView(
          children: [

            const ColorChangeCounter(),
            const DynamicFontSize(),
            const ChangeEmoji(),
            const StylishFont(),
            const ShapeChanger()

          ],
        ),
      ),
    );
  }
}
