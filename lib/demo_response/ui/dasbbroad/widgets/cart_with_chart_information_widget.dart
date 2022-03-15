import 'dart:developer' as developer;
import 'package:demo_rx_dart/constants.dart';
import 'package:demo_rx_dart/demo_response/data/models/cart_chart_dto.dart';
import 'package:demo_rx_dart/demo_response/widgets/chart/chart_widget.dart';
import 'package:flutter/material.dart';

class CartWithChartInformationWidget extends StatelessWidget {
  const CartWithChartInformationWidget({Key? key, required this.cartChartDto}) : super(key: key);
  final CartChartDto cartChartDto;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPaddingAll12,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10),),
        border: Border.all(color: colorGrayE0, )
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(cartChartDto.title, style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.w700),),
                kSpaceHeight2,
                Text(cartChartDto.count.toString(), style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.w700),),
                kSpaceHeight3,
                Text(cartChartDto.men.toString() + " Men", style: Theme.of(context).textTheme.caption,),
                kSpaceWidthDefault,
                Text(cartChartDto.women.toString() + "Women", style: Theme.of(context).textTheme.caption,),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                const SizedBox(
                    width: 150,
                    height: 100,
                    child: ChartWidget(),
                  ),
                kSpaceHeight3,
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: const Color(0xffFFEFE7),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(cartChartDto.percent.toString() + " " + cartChartDto.description, style: Theme.of(context).textTheme.caption?.copyWith(color: Colors.grey),),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}