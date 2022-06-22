import 'package:business_trackers/Components/AppBarStyle.dart';
import 'package:business_trackers/Components/ElevatedButtonCustom.dart';
import 'package:business_trackers/Styles/ColorStyle.dart';
import 'package:business_trackers/Styles/TextStyles.dart';
import 'package:business_trackers/Views/EditCotract.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DocumentSettings extends StatelessWidget {
  const DocumentSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarStyless(
          overlayStyle: SystemUiOverlayStyle.dark,
          title: 'Document Settings',
          leading: BackButton(
            color: ColorStyle.black,
          ),

        ),
        backgroundColor: ColorStyle.primaryColor,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 20,right: 20,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                  'Contract & Signature',
                  // controller.estimate1[index],
                  style:  TextStylesProductSans.textStyles_16
                      .apply(color: ColorStyle.black, fontWeightDelta: 3)
              ),
              SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  'Contact',
                  // controller.estimate1[index],
                  style:  TextStylesProductSans.textStyles_14
                      .apply(color: ColorStyle.black, fontWeightDelta: 0)
              ),
             InkWell(child:  Text(
                 'Generic Contract',
                 // controller.estimate1[index],
                 style:  TextStylesProductSans.textStyles_14
                     .apply(color: ColorStyle.secondryColor, fontWeightDelta: 0)
             ),onTap: (){
               Get.to(EditCotract());
             },)

            ],
          ),
              SizedBox(height: 14,),
              Container(
                height: 1,
                alignment: Alignment.center,

                decoration: BoxDecoration(
                    color: ColorStyle.grey,
                    borderRadius: BorderRadius.circular(8)
                ),
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      'Payment Terms (days)',
                      // controller.estimate1[index],
                      style:  TextStylesProductSans.textStyles_14
                          .apply(color: ColorStyle.black, fontWeightDelta: 0)
                  ),
                  Text(
                      '0',
                      // controller.estimate1[index],
                      style:  TextStylesProductSans.textStyles_14
                          .apply(color: ColorStyle.black, fontWeightDelta: 0)
                  ),

                ],
              ),
              SizedBox(height: 14,),
              Container(
                height: 1,
                alignment: Alignment.center,

                decoration: BoxDecoration(
                    color: ColorStyle.grey,
                    borderRadius: BorderRadius.circular(8)
                ),
              ),


              // SizedBox(height: 14,),

              SizedBox(height: 360,),
              ElevatedButtonCustom(
                height: 60,
                text: "Save",
                colorBG:ColorStyle.secondryColor,
                colorText: ColorStyle.primaryColor,
                width: MediaQuery.of(context).size.width,
                onTap: () {
                  // Get.to(ItemList());

                },
              ),

            ],
          ),
        )
    );
  }
}