import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_button.dart';
import 'package:booking/core/widgets/custom_check_box.dart';
import 'package:booking/core/widgets/custom_drop_down_field.dart';
import 'package:booking/core/widgets/custom_slider_action.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              10.h.ph,
              CustomButton(
                text: "dfsf",
                icon: Icons.camera,
                press: () {
                  // AppRouter.to(()=>S)
                },
              ),
              10.h.ph,
              CustomSlideAction(
                action: (controller) async {
                  controller.loading();
                  await Future.delayed(const Duration(seconds: 3));
                  controller.success(); //starts success
                  controller.reset();
                },
              ),
              10.h.ph,
              CustomDropDownField(),
              10.h.ph,
              CustomCheckbox(
                label: "Remember me",
                onChanged: (val) {
                  print(val);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
