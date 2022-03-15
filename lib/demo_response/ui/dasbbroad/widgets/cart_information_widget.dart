import 'dart:developer' as developer;
import 'package:demo_rx_dart/constants.dart';
import 'package:demo_rx_dart/demo_response/data/models/cart_dto.dart';
import 'package:flutter/material.dart';

class CartInformationWidget extends StatelessWidget {
  const CartInformationWidget({Key? key, required this.cartDto}) : super(key: key);
  final CartDto cartDto;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10),),
        color: cartDto.color
      ),
      padding: kPaddingAll12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(cartDto.title, style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.w600),),
          kSpaceHeight2,
          Text(cartDto.count.toString(), style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.w700),),
          kSpaceHeight2,
          Text(cartDto.description, style: Theme.of(context).textTheme.bodyText2?.copyWith(color: cartDto.descriptionColor),)
        ],
      ),
    );
  }
}