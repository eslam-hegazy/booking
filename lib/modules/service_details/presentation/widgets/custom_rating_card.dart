import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_button.dart';
import 'package:booking/core/widgets/custom_text_form_field.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRatingCard extends StatefulWidget {
  const CustomRatingCard({super.key});

  @override
  State<CustomRatingCard> createState() => _CustomRatingCardState();
}

class _CustomRatingCardState extends State<CustomRatingCard> {
  final TextEditingController controller = TextEditingController();
  bool isEnable = false;
  double rating = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Rate this Service", style: AppStyles.boldStyle(fontSize: 18)),
          RatingBar.builder(
            initialRating: 1,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemBuilder: (context, _) =>
                Icon(Icons.star, color: Colors.amber),
            onRatingUpdate: (rat) {
              setState(() {
                rating = rat;
              });
            },
          ),
          10.h.ph,
          CustomTextFormField(
            controller: controller,
            hintText: "Enter your comment",
            maxLine: 4,
            onChanged: (value) {
              if (value.isEmpty) {
                setState(() {
                  isEnable = false;
                });
              } else {
                setState(() {
                  isEnable = true;
                });
              }
            },
          ),
          16.h.ph,
          CustomButton(
            text: "Send",
            backgroundColor: isEnable
                ? AppColors.primaryColor
                : AppColors.b75Color,
            press: () {},
          ),
        ],
      ),
    );
  }
}
