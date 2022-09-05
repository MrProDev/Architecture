import 'package:architecture/app/app.locator.dart';
import 'package:architecture/enum/bottom_sheet_type.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:stacked_services/stacked_services.dart';

void setupBottomSheetUi() {
  var bottomSheetService = locator<BottomSheetService>();
  final builders = {
    BottomSheetType.floating: (context, sheetRequest, dialogResponse) =>
        _FloatingBoxBottomSheet(
          sheetRequest: sheetRequest,
          completer: dialogResponse,
        ),
  };

  bottomSheetService.setCustomSheetBuilders(builders);
}

class _FloatingBoxBottomSheet extends StatelessWidget {
  final SheetRequest sheetRequest;
  final Function(SheetResponse) completer;
  const _FloatingBoxBottomSheet({
    Key? key,
    required this.sheetRequest,
    required this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
    return Container(
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            sheetRequest.title!,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            controller: controller,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () =>
                      completer(SheetResponse(data: controller.text)),
                  child: Text(
                    sheetRequest.secondaryButtonTitle!,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () => completer(SheetResponse(data: '')),
                  child: Text(
                    sheetRequest.mainButtonTitle!,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
