// import 'package:dotted_border/dotted_border.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:make_screens/constants/dimensions.dart';
// import 'package:make_screens/view/contact_details.dart';
// import 'package:make_screens/widgets/custom_text.dart';
// import '../constants/colors.dart';
// import '../data/drop_down_list.dart';
// import '../utils/custom_date_picker.dart';
// import '../utils/custom_drop_down.dart';
// import '../utils/custom_elevated_button.dart';
// import '../utils/custom_text_field.dart';

// class PersonalDetails extends StatelessWidget {
//   const PersonalDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: const Drawer(),
//       appBar: AppBar(
//         elevation: 20,
//         iconTheme: const IconThemeData(color: whiteColor),
//         shadowColor: blackColor,
//         backgroundColor: appBarColor,
//         centerTitle: true,
//         title: const Text('Employment Form'),
//       ),
//       body: Container(
//         margin: const EdgeInsets.all(15),
//         decoration: BoxDecoration(border: Border.all(color: blackColor)),
//         child: Card(
//           surfaceTintColor: whiteColor,
//           elevation: 15,
//           color: whiteColor,
//           margin: const EdgeInsets.all(0),
//           child: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     // height: 1000,
//                     // color: Colors.green,
//                     child: Column(
//                       children: [
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             Expanded(
//                                 child: Column(
//                               children: [
//                                 SizedBox(
//                                   height: 100,
//                                   width: 120,
//                                   child: Center(
//                                     child: DottedBorder(
//                                       color: Colors.red,
//                                       strokeWidth: 1,
//                                       borderType: BorderType.RRect,
//                                       radius: const Radius.circular(15),
//                                       dashPattern: const [5, 5],
//                                       child: const SizedBox(
//                                         height: 100,
//                                         width: 120,
//                                         child: Icon(
//                                           Icons.image_outlined,
//                                           size: 60,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                     margin: const EdgeInsets.all(10),
//                                     padding: const EdgeInsets.all(6),
//                                     decoration: BoxDecoration(
//                                         border: Border.all(color: Colors.red)),
//                                     child: customText('Choose File')),
//                                 customText('Select jpg, jpeg, png files only',
//                                     fontsize: 10)
//                               ],
//                             )),
//                             Expanded(
//                               child: CustomDatePicker(
//                                 label: 'Select Date',
//                                 initialDate: DateTime.now(),
//                                 onDateSelected: (DateTime selectedDate) {},
//                               ),
//                             ),
//                           ],
//                         ),
//                         height10(),
//                         const CustomTextField(
//                             lable: 'Full Name (As per Aadhar card)'),
//                         height10(),
//                         const Row(
//                           children: [
//                             Expanded(
//                                 child: CustomTextField(lable: 'First Name')),
//                             Expanded(
//                                 child: CustomTextField(lable: 'Middle Name')),
//                             Expanded(
//                                 child: CustomTextField(lable: 'Last Name')),
//                           ],
//                         ),
//                         height10(),
//                         Row(
//                           children: [
//                             Expanded(
//                               child: CustomDropDown(
//                                 items: genderList,
//                                 initialValue: 'Gender',
//                                 onChanged: (String selectedValue) {},
//                               ),
//                             ),
//                             const Expanded(
//                                 child: CustomTextField(lable: 'Email ID')),
//                           ],
//                         ),
//                         height10(),
//                         Row(
//                           children: [
//                             const Expanded(
//                                 child: CustomTextField(lable: 'Contact No')),
//                             Expanded(
//                               child: CustomDropDown(
//                                 items: bloodGroupList,
//                                 initialValue: 'Blood Group',
//                                 onChanged: (String selectedValue) {},
//                               ),
//                             ),
//                           ],
//                         ),
//                         height10(),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Expanded(
//                               child: CustomDropDown(
//                                 items: disabilityList,
//                                 initialValue: 'Any Disability',
//                                 onChanged: (String selectedValue) {},
//                               ),
//                             ),
//                             const Expanded(
//                                 child: CustomTextField(
//                               lable: 'Disability Details',
//                               minLines: 3,
//                             )),
//                           ],
//                         ),
//                         height10(),
//                         Row(
//                           children: [
//                             Expanded(
//                               child: CustomDropDown(
//                                 items: martialStatusList,
//                                 initialValue: 'Martial Status',
//                                 onChanged: (String selectedValue) {},
//                               ),
//                             ),
//                             const Expanded(
//                                 child: CustomTextField(lable: 'Spouse Name')),
//                           ],
//                         ),
//                         sizedHeight(40),
//                         Row(
//                           children: [
//                             const Expanded(
//                               child: CustomElevatedButton(
//                                 label: 'Previous',
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 20,
//                             ),
//                             Expanded(
//                               child: InkWell(
//                                 onTap: () {
//                                   Get.to(() => ContactDetails());
//                                 },
//                                 child: const CustomElevatedButton(
//                                   label: 'Next',
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         height10()
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';
import 'package:make_screens/constants/dimensions.dart';
import 'package:make_screens/view/contact_details.dart';
import 'package:make_screens/widgets/custom_text.dart';
import '../constants/colors.dart';
import '../data/drop_down_list.dart';
import '../utils/custom_date_picker.dart';
import '../utils/custom_drop_down.dart';
import '../utils/custom_elevated_button.dart';
import '../utils/custom_text_field.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  _PersonalDetailsState createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  File? _selectedImage;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _selectedImage = File(pickedFile.path);
      }
    });
  }

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
                            Expanded(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 100,
                                    width: 120,
                                    child: Center(
                                      child: GestureDetector(
                                        onTap: _pickImage,
                                        child: DottedBorder(
                                          color: Colors.red,
                                          strokeWidth: 1,
                                          borderType: BorderType.RRect,
                                          radius: const Radius.circular(15),
                                          dashPattern: const [5, 5],
                                          child: _selectedImage != null
                                              ? Image.file(
                                                  _selectedImage!,
                                                  fit: BoxFit.cover,
                                                )
                                              : const SizedBox(
                                                  height: 80,
                                                  width: 100,
                                                  child: Icon(
                                                    Icons.image_outlined,
                                                    size: 60,
                                                  ),
                                                ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: _pickImage,
                                    child: Container(
                                      margin: const EdgeInsets.all(10),
                                      padding: const EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.red),
                                      ),
                                      child: customText('Choose File'),
                                    ),
                                  ),
                                  customText(
                                    'Select jpg, jpeg, png files only',
                                    fontsize: 10,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: CustomDatePicker(
                                label: 'Select Date',
                                initialDate: DateTime.now(),
                                onDateSelected: (DateTime selectedDate) {},
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
                              child: CustomTextField(lable: 'First Name'),
                            ),
                            Expanded(
                              child: CustomTextField(lable: 'Middle Name'),
                            ),
                            Expanded(
                              child: CustomTextField(lable: 'Last Name'),
                            ),
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
                              child: CustomTextField(lable: 'Email ID'),
                            ),
                          ],
                        ),
                        height10(),
                        Row(
                          children: [
                            const Expanded(
                              child: CustomTextField(lable: 'Contact No'),
                            ),
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
                              ),
                            ),
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
                              child: CustomTextField(lable: 'Spouse Name'),
                            ),
                          ],
                        ),
                        sizedHeight(40),
                        Row(
                          children: [
                            const Expanded(
                              child: CustomElevatedButton(
                                label: 'Previous',
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Get.to(() => ContactDetails());
                                },
                                child: const CustomElevatedButton(
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
