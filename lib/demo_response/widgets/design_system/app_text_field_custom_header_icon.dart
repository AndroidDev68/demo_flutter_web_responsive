
import 'dart:developer' as developer;
import 'package:demo_rx_dart/demo_response/widgets/design_system/app_text_form_field_material_custom_icon.dart';
import 'package:demo_rx_dart/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class AppTextFieldCustomHeaderIcon extends StatefulWidget {
  const AppTextFieldCustomHeaderIcon({Key? key}) : super(key: key);

  @override
  _AppTextFieldCustomHeaderIconState createState() => _AppTextFieldCustomHeaderIconState();
}

class _AppTextFieldCustomHeaderIconState extends State<AppTextFieldCustomHeaderIcon> {
  bool showInputText = false;
  final focusNode = FocusNode();
  final editTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      if(!focusNode.hasFocus && editTextController.text.trim().isEmpty){
        developer.log("value: !focusNode.hasFocus && editTextController.text.trim().isEmpty: true ", name:'tz');
        setState(() {
          showInputText = false;
        });
      }else{
        developer.log("value: !focusNode.hasFocus && editTextController.text.trim().isEmpty: false ", name:'tz');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedOpacity(
            opacity: !showInputText ? 0 : 1,
            duration: const Duration(milliseconds: 800),
            child: AppTextFormFieldMaterialCustomIcon(
              focusNode: focusNode,
              controller: editTextController,
              contentPadding: const EdgeInsets.only(top: 8,bottom: 8, right: 36, left: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: AnimatedAlign(
              alignment: showInputText ? Alignment.centerRight : Alignment.centerLeft,
              duration: const Duration(milliseconds: 800),
              curve: Curves.easeIn,
              child: InkResponse(
                onTap: (){
                  if(!showInputText){
                    focusNode.requestFocus();
                  }
                  setState(() {
                    showInputText = !showInputText;
                   });
                  },
                child: Assets.icons.icSearch.svg(width: 24, height: 24),
              ),
            ),
          ),
        ],
      )
    );
  }
}