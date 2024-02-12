import 'bloc/detail_doctor_address_bloc.dart';
import 'dart:async';
import 'models/detail_doctor_address_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore_for_file: must_be_immutable
class DetailDoctorAddressPage extends StatefulWidget {
  const DetailDoctorAddressPage({Key? key})
      : super(
          key: key,
        );

  @override
  DetailDoctorAddressPageState createState() => DetailDoctorAddressPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<DetailDoctorAddressBloc>(
      create: (context) => DetailDoctorAddressBloc(DetailDoctorAddressState(
        detailDoctorAddressModelObj: DetailDoctorAddressModel(),
      ))
        ..add(DetailDoctorAddressInitialEvent()),
      child: DetailDoctorAddressPage(),
    );
  }
}

class DetailDoctorAddressPageState extends State<DetailDoctorAddressPage>
    with AutomaticKeepAliveClientMixin<DetailDoctorAddressPage> {
  Completer<GoogleMapController> googleMapController = Completer();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailDoctorAddressBloc, DetailDoctorAddressState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 30.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_practice_place".tr,
                            style: CustomTextStyles.titleMediumSemiBold_1,
                          ),
                          SizedBox(height: 17.v),
                          Text(
                            "msg_islamabad_pakistan".tr,
                            style: CustomTextStyles.bodyMediumGray60002,
                          ),
                          SizedBox(height: 21.v),
                          Text(
                            "lbl_location_map".tr,
                            style: CustomTextStyles.titleMediumSemiBold_1,
                          ),
                          SizedBox(height: 10.v),
                          _buildLocationMap(context),
                          SizedBox(height: 47.v),
                          CustomElevatedButton(
                            text: "msg_make_an_appointment".tr,
                            buttonStyle: CustomButtonStyles.fillBlueATL16,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumWhiteA700,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLocationMap(BuildContext context) {
    return SizedBox(
      height: 258.v,
      width: 327.h,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }
}
