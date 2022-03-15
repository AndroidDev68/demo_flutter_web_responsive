import 'package:demo_rx_dart/constants.dart';
import 'package:demo_rx_dart/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class AppTextFormFieldMaterialCustomIcon extends FormField<String> {
  final TextEditingController? controller;
  AppTextFormFieldMaterialCustomIcon({
    this.controller,
    Key? key,
    String? labelText,
    String? hintText,
    String? initialValue,
    FocusNode? focusNode,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
    bool autoValidate = false,
    bool enabled = true,
    int maxLength = 1000,
    int minLength = 1,
    int? maxLines = 1,
    bool selected = false,
    Widget? trailingIcon,
    Widget? leadingIcon,
    Widget? prefix,
    double? borderRadius,
    Color? fillColor,
    double? elevation,
    TextInputType keyboardType = TextInputType.text,
    FloatingLabelBehavior floatingLabelBehavior = FloatingLabelBehavior.auto,
    AutovalidateMode? autoValidateMode,
    bool obscureText = true,
    bool isPassword = false,
    bool inputRequired = false,
    Color lablelColor = Colors.black45,
    EdgeInsets? contentPadding,
    onchange,
    onTapWidget,
    onSubmitWidget,
  }) : super(
            key: key,
            validator: validator,
            onSaved: onSaved,
            initialValue: initialValue,
            autovalidateMode: autoValidateMode,
            builder: (FormFieldState stateOld) {
              AppTextFormFieldMaterialCustomIconState state =
                  stateOld as AppTextFormFieldMaterialCustomIconState;
              return GestureDetector(
                onTap: onTapWidget,
                child: TextField(
                  focusNode: focusNode,
                  keyboardType: keyboardType,
                  controller: state.controller,
                  obscureText: isPassword ? obscureText : false,
                  style: Theme.of(state.context).textTheme.subtitle2!
                      .copyWith(color: Colors.black, height: 1.5),
                  onChanged: (text) {
                    state.didChange(text);
                    if (onchange != null) onchange(text);
                  },
                  onSubmitted: (value) {
                    if (onSubmitWidget != null) {
                      onSubmitWidget(value);
                    }
                  },
                  cursorColor: Colors.black38,
                  maxLength: maxLength,
                  maxLengthEnforced: true,
                  maxLines: maxLines,
                  decoration: const InputDecoration()
                      .applyDefaults(Theme.of(state.context)
                          .inputDecorationTheme)
                      .copyWith(
                        hintText: hintText ?? "",
                        filled: true,
                        labelText: labelText,
                        counterText: "",
                        hintStyle: Theme.of(state.context).textTheme.bodyText2!.copyWith(color: colorGrayC4),
                        labelStyle: Theme.of(state.context).textTheme.subtitle2!.copyWith(color: Colors.black),
                        floatingLabelBehavior:
                            floatingLabelBehavior,
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(color: colorGrayE0, width: 1,),
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: colorGrayE0, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        errorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: colorGrayB2, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        disabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: colorGrayE0, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        fillColor: fillColor ?? Colors.transparent,
                        contentPadding: contentPadding ?? const EdgeInsets.only(
                          top: 8.0,
                          bottom: 8.0,
                          left: 16,
                          right: 16
                        ),
                        suffixIcon: trailingIcon != null
                            ? Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12),
                                child: InkResponse(
                                    onTap: () {
                                      obscureText = !obscureText;
                                      state.setState(() {});
                                    },
                                    child: isPassword && obscureText
                                        ? Assets.icons.icHidePassword.svg(width: 24, height: 24)
                                        : isPassword && !obscureText ? Assets.icons.icEye.svg(width: 24, height: 24)
                                        : trailingIcon),
                              )
                            : null,
                        prefixIcon: leadingIcon != null
                            ? Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 12),
                                child: leadingIcon)
                            : null,
                        errorText: state.errorText,
                        // errorText: "state.errorText",
                        enabled: enabled,
                      ),
                ),
              );
            });

  @override
  FormFieldState<String> createState() =>
      AppTextFormFieldMaterialCustomIconState();
}

class AppTextFormFieldMaterialCustomIconState extends FormFieldState<String> {
  @override
  AppTextFormFieldMaterialCustomIcon get widget =>
      super.widget as AppTextFormFieldMaterialCustomIcon;

  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    if (widget.controller != null) {
      controller = widget.controller!;
    } else {
      controller = TextEditingController();
    }
    controller.addListener(() {
      if(mounted){
        didChange(controller.text);
        validate();
      }
    });
  }
}
