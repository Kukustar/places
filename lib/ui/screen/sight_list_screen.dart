import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/filters_screen.dart';
import 'package:places/ui/widgets/card_widgets/place_card.dart';
import 'package:places/ui/widgets/navigation_bar.dart';

/// SightListScreen
class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SightListScreenState();
  }
}

class _SightListScreenState extends State<SightListScreen> with WidgetsBindingObserver {
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    final double bottomInset = WidgetsBinding.instance!.window.viewInsets.bottom;
    final bool newValue = bottomInset > 0.0;
    if (newValue != _isKeyboardVisible) {
        // if user hide keyboard we un focus search field
        if (!newValue && _isKeyboardVisible) {
          unFocusSearch(FocusScope.of(context));
        }
        setState(() {
          _isKeyboardVisible = newValue;
        });
    }
  }

  void unFocusSearch(FocusScopeNode currentFocus) {
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        unFocusSearch(FocusScope.of(context));
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(112.0),
          child: AppBar(
            flexibleSpace: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: RichText(
                    maxLines: 2,
                    textAlign: TextAlign.left,
                    text: TextSpan(
                        text: 'C',
                        style: Theme.of(context).primaryTextTheme.headline4!.copyWith(color: Colors.green),
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'писок\n',
                            style: Theme.of(context).primaryTextTheme.headline4,
                          ),
                          TextSpan(
                            text: 'и',
                            style: Theme.of(context).primaryTextTheme.headline4!.copyWith(color: Colors.yellow),
                          ),
                          TextSpan(
                              text: 'нтересных мест',
                              style: Theme.of(context).primaryTextTheme.headline4
                          )
                        ]
                    )
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      floatingLabelStyle: const TextStyle(
                        color: Color(0xffF5F5F5)
                      ),
                      fillColor: Color(0xffF5F5F5),
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                            color: Color(0xffF5F5F5),
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xffF5F5F5),
                          ),
                      ),
                      labelText: 'Поиск',
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.tune_outlined,
                        ),
                        onPressed: () {
                          Navigator.push<MaterialPageRoute>(context, MaterialPageRoute(builder: (BuildContext context) => const FilterScreen()));
                          unFocusSearch(FocusScope.of(context));
                      },
                    )
                  ),

                ),
              ),
              for( Sight sight in mocks ) InterestingPlaceCard(sight: sight)
            ],
          ),
        ),
        bottomNavigationBar: const NavigationBar(currentIndex: 0)
      ),
    );
  }
}
