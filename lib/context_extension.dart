import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

OverlayEntry? overlayEntry;
extension ContextExtension on BuildContext{
  showLoading(){
    overlayEntry =  OverlayEntry(
        builder: (context) => Container(
          color: Colors.transparent,
          child: Stack(
            children: [
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    color: Colors.transparent,
                    alignment: Alignment.center,
                    child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 24),
                        padding: const EdgeInsets.all(24),
                        child: const CupertinoActivityIndicator()),
                  ),
                ),
              ),
            ],
          ),
        )
    );
    Overlay.of(this)?.insert(overlayEntry!);
  }
  hideLoading(){
    overlayEntry?.remove();
  }
}