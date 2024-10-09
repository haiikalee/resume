import '/components/about_card/about_card_widget.dart';
import '/components/about_card_mobile/about_card_mobile_widget.dart';
import '/components/curriculum_card/curriculum_card_widget.dart';
import '/components/curriculum_card_mobile/curriculum_card_mobile_widget.dart';
import '/components/education_card/education_card_widget.dart';
import '/components/education_card_mobile/education_card_mobile_widget.dart';
import '/components/footer/footer_widget.dart';
import '/components/footer_mobile/footer_mobile_widget.dart';
import '/components/skills_card/skills_card_widget.dart';
import '/components/skills_card_mobile/skills_card_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'haikal_widget.dart' show HaikalWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HaikalModel extends FlutterFlowModel<HaikalWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Carousel widget.
  CarouselController? carouselController1;
  int carouselCurrentIndex1 = 1;

  // Model for AboutCard component.
  late AboutCardModel aboutCardModel;
  // Model for EducationCard component.
  late EducationCardModel educationCardModel;
  // Model for CurriculumCard component.
  late CurriculumCardModel curriculumCardModel;
  // Model for SkillsCard component.
  late SkillsCardModel skillsCardModel;
  // State field(s) for Carousel widget.
  CarouselController? carouselController2;
  int carouselCurrentIndex2 = 1;

  // Model for AboutCardMobile component.
  late AboutCardMobileModel aboutCardMobileModel;
  // Model for EducationCardMobile component.
  late EducationCardMobileModel educationCardMobileModel;
  // Model for CurriculumCardMobile component.
  late CurriculumCardMobileModel curriculumCardMobileModel;
  // Model for SkillsCardMobile component.
  late SkillsCardMobileModel skillsCardMobileModel;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for FooterMobile component.
  late FooterMobileModel footerMobileModel;

  @override
  void initState(BuildContext context) {
    aboutCardModel = createModel(context, () => AboutCardModel());
    educationCardModel = createModel(context, () => EducationCardModel());
    curriculumCardModel = createModel(context, () => CurriculumCardModel());
    skillsCardModel = createModel(context, () => SkillsCardModel());
    aboutCardMobileModel = createModel(context, () => AboutCardMobileModel());
    educationCardMobileModel =
        createModel(context, () => EducationCardMobileModel());
    curriculumCardMobileModel =
        createModel(context, () => CurriculumCardMobileModel());
    skillsCardMobileModel = createModel(context, () => SkillsCardMobileModel());
    footerModel = createModel(context, () => FooterModel());
    footerMobileModel = createModel(context, () => FooterMobileModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    aboutCardModel.dispose();
    educationCardModel.dispose();
    curriculumCardModel.dispose();
    skillsCardModel.dispose();
    aboutCardMobileModel.dispose();
    educationCardMobileModel.dispose();
    curriculumCardMobileModel.dispose();
    skillsCardMobileModel.dispose();
    footerModel.dispose();
    footerMobileModel.dispose();
  }
}
