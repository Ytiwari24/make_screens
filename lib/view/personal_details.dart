import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_screens/constants/dimensions.dart';
import 'package:make_screens/view/contact_details.dart';
import '../constants/colors.dart';
import '../data/drop_down_list.dart';
import '../utils/custom_date_picker.dart';
import '../utils/custom_drop_down.dart';
import '../utils/custom_elevated_button.dart';
import '../utils/custom_text_field.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        elevation: 20,
        iconTheme: const IconThemeData(color: whiteColor),
        shadowColor: blackColor,
        backgroundColor: appBarColor,
        centerTitle: true,
        title: const Text('Employment Form'),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(border: Border.all(color: blackColor)),
        child: Card(
          surfaceTintColor: whiteColor,
          elevation: 15,
          color: whiteColor,
          margin: const EdgeInsets.all(0),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    // height: 1000,
                    // color: Colors.green,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Expanded(
                                child: SizedBox(
                              height: 200,
                            )),
                            Expanded(
                              child: CustomDatePicker(
                                label: 'Select Date',
                                initialDate: DateTime.now(),
                                onDateSelected: (DateTime selectedDate) {
                                  // Handle the selected date
                                  print('Selected Date: $selectedDate');
                                },
                              ),
                            ),
                          ],
                        ),
                        height10(),
                        const CustomTextField(
                            lable: 'Full Name (As per Aadhar card)'),
                        height10(),
                        const Row(
                          children: [
                            Expanded(
                                child: CustomTextField(lable: 'First Name')),
                            Expanded(
                                child: CustomTextField(lable: 'Middle Name')),
                            Expanded(
                                child: CustomTextField(lable: 'Last Name')),
                          ],
                        ),
                        height10(),
                        Row(
                          children: [
                            Expanded(
                              child: CustomDropDown(
                                items: genderList,
                                initialValue: 'Gender',
                                onChanged: (String selectedValue) {},
                              ),
                            ),
                            const Expanded(
                                child: CustomTextField(lable: 'Email ID')),
                          ],
                        ),
                        height10(),
                        Row(
                          children: [
                            const Expanded(
                                child: CustomTextField(lable: 'Contact No')),
                            Expanded(
                              child: CustomDropDown(
                                items: bloodGroupList,
                                initialValue: 'Blood Group',
                                onChanged: (String selectedValue) {},
                              ),
                            ),
                          ],
                        ),
                        height10(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: CustomDropDown(
                                items: disabilityList,
                                initialValue: 'Any Disability',
                                onChanged: (String selectedValue) {},
                              ),
                            ),
                            const Expanded(
                                child: CustomTextField(
                              lable: 'Disability Details',
                              minLines: 3,
                            )),
                          ],
                        ),
                        height10(),
                        Row(
                          children: [
                            Expanded(
                              child: CustomDropDown(
                                items: martialStatusList,
                                initialValue: 'Martial Status',
                                onChanged: (String selectedValue) {},
                              ),
                            ),
                            const Expanded(
                                child: CustomTextField(lable: 'Spouse Name')),
                          ],
                        ),
                        sizedHeight(40),
                        Row(
                          children: [
                            Expanded(
                              child: CustomElevatedButton(
                                label: 'Previous',
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Get.to(() => ContactDetails());
                                },
                                child: CustomElevatedButton(
                                  label: 'Next',
                                ),
                              ),
                            ),
                          ],
                        ),
                        height10()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
