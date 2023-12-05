import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgIcRoundHome,
        activeIcon: ImageConstant.imgIcRoundHome,
        type: BottomBarEnum.Icroundhome,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgMingcuteGridFill,
      activeIcon: ImageConstant.imgMingcuteGridFill,
      type: BottomBarEnum.Mingcutegridfill,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMaterialSymbol,
      activeIcon: ImageConstant.imgMaterialSymbol,
      type: BottomBarEnum.Materialsymbol,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgEtProfileMale,
      activeIcon: ImageConstant.imgEtProfileMale,
      type: BottomBarEnum.Etprofilemale,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: SizedBox(
        height: 73.v,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            bottomMenuList.length,
            (index) {
              return InkWell(
                onTap: () {
                  for (var element in bottomMenuList) {
                    element.isSelected = false;
                  }
                  bottomMenuList[index].isSelected = true;
                  widget.onChanged?.call(bottomMenuList[index].type);
                  setState(() {});
                },
                child: bottomMenuList[index].isSelected
                    ? CustomImageView(
                        imagePath: bottomMenuList[index].activeIcon,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        color: appTheme.black900,
                      )
                    : CustomImageView(
                        imagePath: bottomMenuList[index].icon,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        color: appTheme.black900,
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Icroundhome,
  Mingcutegridfill,
  Materialsymbol,
  Etprofilemale,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
