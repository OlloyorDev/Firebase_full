import 'package:flutter/material.dart';
import 'package:imei_scanner/core/utils/app_utils.dart';
import 'package:imei_scanner/features/home/presentation/widgets/custom_text_field.dart';

class HomeBottomSheet extends StatefulWidget {
  const HomeBottomSheet({Key? key}) : super(key: key);

  @override
  State<HomeBottomSheet> createState() => _HomeBottomSheetState();
}

class _HomeBottomSheetState extends State<HomeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppBar(
          title: const Text('Add text'),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close),
            ),
          ],
        ),
        AppUtils.kBoxHeight16,
        Padding(
          padding: AppUtils.kPaddingHorizontal16,
          child: TextField(
            decoration: InputDecoration(
              labelText: 'name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        AppUtils.kBoxHeight16,
        Padding(
          padding: AppUtils.kPaddingHorizontal16,
          child: TextField(
            decoration: InputDecoration(
              labelText: 'imei',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        const SizedBox(height: 100),
        Padding(
          padding: AppUtils.kPaddingHorizontal16,
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(160, 32),
                  maximumSize: const Size(160, 32),
                ),
                child: const Text('Cancel'),
              ),
              AppUtils.kSpacer,
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(160, 32),
                  maximumSize: const Size(160, 32),
                ),
                child: const Text('Done'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
