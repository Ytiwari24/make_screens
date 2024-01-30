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
import '../utils/custom_drop_down.dart';
import '../utils/custom_elevated_button.dart';
import '../utils/custom_text_field.dart';

class OtherDetails extends StatefulWidget {
  const OtherDetails({Key? key}) : super(key: key);

  @override
  _OtherDetailsState createState() => _OtherDetailsState();
}

class _OtherDetailsState extends State<OtherDetails> {
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

  var isSame = false.obs;
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
        title: const Text('Other Details'),
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
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 100,
                              width: 120,
                              child: Center(
                                child: GestureDetector(
                                  onTap: _pickImage,
                                  child: DottedBorder(
                                    color: redColor,
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                customText('Upload Resume',
                                    fontweight: FontWeight.bold),
                                InkWell(
                                  onTap: _pickImage,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    padding: const EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: redColor),
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
                          ],
                        ),
                        sizedHeight(40),
                        Row(
                          children: [
                            Obx(
                              () => Checkbox(
                                  value: isSame.value,
                                  onChanged: (bool? value) {
                                    isSame.value = !isSame.value;
                                  }),
                            ),
                            customText(
                                'Academic Qualification(Minimum One Education is mandatory)'),
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
                              child: CustomTextField(lable: 'Specilization'),
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
                                lable: 'Marks',
                              ),
                            ),
                          ],
                        ),
                        height10(),
                        Row(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 120,
                              child: Center(
                                child: GestureDetector(
                                  onTap: _pickImage,
                                  child: DottedBorder(
                                    color: redColor,
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
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  customText('', fontweight: FontWeight.bold),
                                  InkWell(
                                    onTap: _pickImage,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      padding: const EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: redColor),
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
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                padding: const EdgeInsets.all(5),
                                color: const Color.fromARGB(255, 6, 143, 10),
                                child: const Icon(
                                  Icons.add,
                                  color: whiteColor,
                                ),
                              ),
                            )
                          ],
                        ),
                        Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.black,
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customText('Name :', fontweight: FontWeight.bold),
                            customText('Relation :',
                                fontweight: FontWeight.bold),
                            customText('Aadhar Card :',
                                fontweight: FontWeight.bold),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                customText('Action :',
                                    fontweight: FontWeight.bold),
                                InkWell(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.delete,
                                      color: Colors.grey,
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
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
                                  Get.to(() => const ContactDetails());
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
