import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/common_widgets/url_launcher.dart';
import 'package:fresh_kebab/screens/vacancy/model/vacancy_model.dart';
import 'package:fresh_kebab/screens/vacancy/repository/vacancy_repository.dart';

Widget allVacancysMobile(BuildContext context) {
  return Column(
    children: [
      _workerMobileList(WorkRepository.courier, context),
      const SizedBox(height: 60),
      _workerMobileList(WorkRepository.pizzaMaker, context),
      const SizedBox(height: 60),
      _workerMobileList(WorkRepository.cleaner, context),
      const SizedBox(height: 60),
      _workerMobileList(WorkRepository.chef, context),
      const SizedBox(height: 60),
    ],
  );
}

Widget workerMobile(BuildContext context, WorkerModel item) {
  final screenSize = MediaQuery.of(context).size;
  double imageWidth = screenSize.width * 0.9;
  double imageHeight = screenSize.width * 0.65;
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          item.imagePath,
          width: imageWidth,
          height: imageHeight,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.textPost,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            if (item.textDescription1 != null) Text(item.textDescription1!),
            if (item.textDescription2 != null) Text(item.textDescription2!),
            if (item.textDescription3 != null) Text(item.textDescription3!),
            if (item.textDescription4 != null) Text(item.textDescription4!),
            if (item.textDescription5 != null) Text(item.textDescription5!),
            if (item.textDescription6 != null) Text(item.textDescription6!),
            if (item.textDescription7 != null) Text(item.textDescription7!),
            const SizedBox(height: 30),
          ],
        ),
        Container(
          alignment: Alignment.center,
          height: 50,
          width: 110,
          decoration: const BoxDecoration(
              color: Color(0xffcc3333),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: GestureDetector(
            onTap: () {
              if (item.textPost == 'Курьер') {
                MyLaunch.callNastya();
              } else {
                MyLaunch.callRenat();
              }
            },
            child: const Text(
              "Позвонить",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _workerMobileList(List<WorkerModel> categories, BuildContext context) {
  return Column(
    children: categories
        .map((workerModel) => workerMobile(context, workerModel))
        .toList(),
  );
}
