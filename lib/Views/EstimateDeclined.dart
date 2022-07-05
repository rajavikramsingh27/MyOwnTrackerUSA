import '../Controllers/EstimateDeclinedContoller.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../Views/EstimateDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Models/ModelEstimate.dart';

class EstimateDeclined extends StatelessWidget {
  List<ModelEstimate> arrModelEstimate;
  EstimateDeclined({Key? key, required this.arrModelEstimate}) : super(key: key);

  final controller = Get.put(EstimateDeclinedContoller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorStyle.primaryColor,
        body: ListView.builder(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 16),
            shrinkWrap: true,
            itemCount: arrModelEstimate.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                child: Container(
                  padding: EdgeInsets.only(
                    right: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // padding: EdgeInsets.only(top: ),
                        alignment: Alignment.center,
                        height: 100,
                        width: 12,

                        decoration: BoxDecoration(
                          color: ColorStyle.hex('#FF8989'),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              arrModelEstimate[index].client!.name.toString(),
                              style: TextStylesProductSans.textStyles_14.apply(
                                  color: ColorStyle.black, fontWeightDelta: 0)),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                              arrModelEstimate[index].date!.toString(),
                              style: TextStylesProductSans.textStyles_14.apply(
                                  color: ColorStyle.black, fontWeightDelta: 0)),
                        ],
                      )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                              '\$ '+arrModelEstimate[index].amountTotal!.toString(),
                              style: TextStylesProductSans.textStyles_14.apply(
                                  color: ColorStyle.black, fontWeightDelta: 0)),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            children: [
                              InkWell(
                                child: Image.asset(
                                  ImageStyle.Path475,
                                  height: 20,
                                ),
                                onTap: () {},
                              ),
                              Container(
                                width: 15,
                              ),
                              InkWell(
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 10, top: 6, bottom: 6),
                                  alignment: Alignment.center,
                                  // height: 2,
                                  // width: 20,
                                  child: Text('INVOICED',
                                      // controller.estimate2[index],
                                      style: TextStylesProductSans.textStyles_12
                                          .apply(
                                              color: ColorStyle.white,
                                              fontWeightDelta: 0)),
                                  decoration: BoxDecoration(
                                      color: ColorStyle.grays,
                                      borderRadius: BorderRadius.circular(6)),
                                ),
                                onTap: () {},
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      color: ColorStyle.blue,
                      borderRadius: BorderRadius.circular(20)),
                ),
                onTap: () {
                  Get.to(EstimateDetails(modelEstimate: arrModelEstimate[index], ));
                },
              );
            }));
  }
}
