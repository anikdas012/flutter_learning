import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

import 'intro_slider.dart';
import 'intro_screen.dart';

class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = [];
  List<IntroPage> pages = [];

  late Function goToTab;

  @override
  void initState() {
    super.initState();

    pages.add(
        IntroPage(
            "Encrypt Your Email \nand Attachments.",
            "SecureMyEmail protects not only \nyour email text, but attached\ndocuments as well.",
            "assets/images/screen_01.png",
            true
        )
    );
    pages.add(
        IntroPage(
            "Encrypt Multiple\nEmail Accounts.",
            "Encrypt up to five of your personal\nand company email addresses\nper account.",
            "assets/images/screen_02.png",
            false
        )
    );
    pages.add(
        IntroPage(
            "True End-to-End\nEncryption.",
            "No one, except your intended\nrecipieents, can ever decrypt your\nencrypted email and attachments.",
            "assets/images/screen_03.png",
            false
        )
    );
    pages.add(
        IntroPage(
            "Send and Receive\nEncrypted Email\nto and from anyone.",
            "They don't have to be a SecureMyEmail\ncustomer as long as you are.",
            "assets/images/screen_04.png",
            false
        )
    );
    pages.add(
        IntroPage(
            "Easy and Modern\nPGP-based Encryption.",
            "We provide you genuine PGP keys that\nare yours to keep and can be used for\nother applications.",
            "assets/images/screen_05.png",
            false
        )
    );
    pages.add(
        IntroPage(
            "Build your own Private\nSecure Contacts List.",
            "Invite friends and colleagues directly\nto ensure seamlessly encrypted\ncommunication.",
            "assets/images/screen_06.png",
            false
        )
    );
  }

  void onDonePress() {
    // Back to the first tab
    this.goToTab(0);
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
  }

  Widget renderNextBtn() {
    return Image.asset(
      "assets/images/arrow.png",
      width: 20.0,
      height: 20.0,
    );
  }

  Widget renderDoneBtn() {
    return Text(
      'Done',
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14.0,
      ),
    );
  }

  Widget renderSkipBtn() {
    return Text(
      'Skip',
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14.0,
      ),
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = [];
    for (int i = 0; i < pages.length; i++) {
      IntroPage currentLayout = pages[i];
      tabs.add(currentLayout);
    }

    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(

      // Skip button
      renderSkipBtn: this.renderSkipBtn(),

      // Next button
      renderNextBtn: this.renderNextBtn(),

      // Done button
      /*renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,*/
      /*colorDoneBtn: Color(0x33ffcc5c),
      highlightColorDoneBtn: Color(0xffffcc5c),*/

      // Dot indicator
      colorDot: Colors.grey,
      colorActiveDot: Colors.orange,
      sizeDot: 8.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,

      // Tabs
      listCustomTabs: this.renderListCustomTabs(),
      refFuncGoToTab: (refFunc) {
        this.goToTab = refFunc;
      },

      // Behavior
      scrollPhysics: BouncingScrollPhysics(),

      // Show or hide status bar
      hideStatusBar: true,

      // On tab change completed
      onTabChangeCompleted: this.onTabChangeCompleted,
    );
  }
}