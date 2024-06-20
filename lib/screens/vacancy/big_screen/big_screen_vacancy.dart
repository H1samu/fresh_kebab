import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/common_widgets/constants.dart';
import 'package:fresh_kebab/screens/common_widgets/url_launcher.dart';
import 'package:fresh_kebab/screens/vacancy/model/vacancy_model.dart';
import 'package:fresh_kebab/screens/vacancy/repository/vacancy_repository.dart';

Widget allVacancysNotMobile() {
  return Column(
    children: [
      _workerNotMobileList(WorkRepository.courier),
      const SizedBox(height: 60),
      _workerNotMobileList(WorkRepository.pizzaMaker),
      const SizedBox(height: 60),
      _workerNotMobileList(WorkRepository.cleaner),
      const SizedBox(height: 60),
      _workerNotMobileList(WorkRepository.chef),
      const SizedBox(height: 60),
    ],
  );
}

Widget workerNotMobile(WorkerModel item) {
  return Container(
    height: 250,
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          item.imagePath,
          width: 330,
          height: 250,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.textPost,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              if (item.textDescription1 != null) Text(item.textDescription1!),
              if (item.textDescription2 != null) Text(item.textDescription2!),
              if (item.textDescription3 != null) Text(item.textDescription3!),
              if (item.textDescription4 != null) Text(item.textDescription4!),
              if (item.textDescription5 != null) Text(item.textDescription5!),
              if (item.textDescription6 != null) Text(item.textDescription6!),
              if (item.textDescription7 != null) Text(item.textDescription7!),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 110,
                decoration: const BoxDecoration(
                    color: FreshKebabColors.fkRed,
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
        ),
      ],
    ),
  );
}

Widget _workerNotMobileList(List<WorkerModel> categories) {
  return Column(
    children: categories.map((m3) => workerNotMobile(m3)).toList(),
  );
}
