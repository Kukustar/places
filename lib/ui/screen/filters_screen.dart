import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/widgets/filter_screen/category_button.dart';

import 'dart:math';

import '../../mocks.dart';

class Coordinate {
  const Coordinate(this.latitude, this.longitude);

  final double latitude;
  final double longitude;
}

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState()  => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {

  bool isHotelSelected = false;
  bool isRestaurantSelected = false;
  bool isSpecialPlaceSelected = false;
  bool isParkSelected = false;
  bool isMuseumSelected = false;
  bool isCafeSelected = false;

  RangeValues _currentRangeValues = const RangeValues(100, 10000);

  String startView = '100 метров';
  String endView = '10 километров';

  bool arePointsNear(Coordinate checkPoint, Coordinate centerPoint, double startKm, double endKm) {
    const double ky = 40000 / 360;
    final double kx = cos(pi * centerPoint.latitude / 180.0) * ky;
    final double dx = (centerPoint.longitude - checkPoint.longitude).abs() * kx;
    final double dy = (centerPoint.latitude - checkPoint.latitude).abs() * ky;
    final double position = sqrt(dx * dx + dy * dy);

    return position >= startKm && position <= endKm;
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final int countOfPlaces = mocks.where((Sight element) {
      const Coordinate centerPoint = Coordinate(54.720023, 20.544183);
      final Coordinate checkPoint = Coordinate(element.lat, element.lon);

      return arePointsNear(checkPoint, centerPoint, _currentRangeValues.start / 1000, _currentRangeValues.end / 1000);
    }).length;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                setState(() {
                  isHotelSelected = false;
                  isRestaurantSelected = false;
                  isSpecialPlaceSelected = false;
                  isParkSelected = false;
                  isMuseumSelected = false;
                  isCafeSelected = false;
                });
              },
              child: Text(
                  'Очистить',
                  style: Theme.of(context).primaryTextTheme.subtitle1!.copyWith(
                    color: Color(0xFF4CAF50),
                    fontWeight: FontWeight.w500
                  ),
              )
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.navigate_before,
            color: Colors.black,
          ),
        ),
      ),
      body: SizedBox(
        height: height,
        child: Padding(
          padding: const EdgeInsets.only(right: 16.0, left: 16.0, top: 24, bottom: 8),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Категории'.toUpperCase(),
                    style: Theme.of(context).primaryTextTheme.caption!.copyWith(
                      color: const Color.fromARGB(56, 124, 126, 146)
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    CategoryButton(
                      svgAsset: 'assets/icons/hotel.svg',
                      name: 'Отель',
                      isSelected: isHotelSelected,
                      onButtonTap: () {
                        setState(() {
                          isHotelSelected = !isHotelSelected;
                        });
                      }
                    ),
                    const SizedBox(width: 44),
                    CategoryButton(
                        svgAsset: 'assets/icons/restaurant.svg',
                        name: 'Ресторан',
                        isSelected: isRestaurantSelected,
                        onButtonTap: () {
                          setState(() {
                            isRestaurantSelected = !isRestaurantSelected;
                          });
                        }
                    ),
                    const SizedBox(width: 44),
                    CategoryButton(
                      svgAsset: 'assets/icons/star.svg',
                      name: 'Особое место',
                      isSelected: isSpecialPlaceSelected,
                      onButtonTap: () {
                        setState(() {
                          isSpecialPlaceSelected = !isSpecialPlaceSelected;
                        });
                      }
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    CategoryButton(
                      svgAsset: 'assets/icons/tree.svg',
                      name: 'Парк',
                      isSelected: isParkSelected,
                      onButtonTap: () {
                        setState(() {
                          isParkSelected = !isParkSelected;
                        });
                      }
                    ),
                    const SizedBox(width: 44),
                    CategoryButton(
                        svgAsset: 'assets/icons/musem.svg',
                        name: 'Музей',
                        isSelected: isMuseumSelected,
                        onButtonTap: () {
                          setState(() {
                            isMuseumSelected = !isMuseumSelected;
                          });
                        }
                    ),
                    const SizedBox(width: 44),
                    CategoryButton(
                        svgAsset: 'assets/icons/cafe.svg',
                        name: 'Кафе',
                        isSelected: isCafeSelected,
                        onButtonTap: () {
                          setState(() {
                            isCafeSelected = !isCafeSelected;
                          });
                        }
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Расстояние',
                    style: Theme.of(context).primaryTextTheme.subtitle1,
                  ),
                  Text('от $startView до $endView')
                ],
              ),
              const SizedBox(height: 24),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                    activeTrackColor: const Color(0xFF4CAF50),
                    inactiveTrackColor: const Color.fromARGB(56, 124, 126, 146),
                    thumbColor: Colors.white,
                    trackHeight: 1.0,
                    rangeThumbShape: const RoundRangeSliderThumbShape(
                      elevation: 3,
                  )
                ),
                child: RangeSlider(
                    values: _currentRangeValues,
                    min: 100,
                    max: 10000,
                    onChanged: (RangeValues rangeValues) {
                      setState(() {
                        if (rangeValues.start >= 1000) {
                          startView = (rangeValues.start / 1000).toStringAsFixed(1);
                        } else if(rangeValues.start < 1000 && rangeValues.end >= 1000) {
                          final String calculatedStartValue = rangeValues.start.toStringAsFixed(0);
                          startView = '$calculatedStartValue метров';
                        } else {
                          startView = rangeValues.start.toStringAsFixed(0);
                        }

                        if (rangeValues.end >= 1000) {
                          final String calculatedEndValue = (rangeValues.end / 1000).toStringAsFixed(1);
                          endView = '$calculatedEndValue километров';
                        } else {
                          final String calculatedStartValue = rangeValues.end.toStringAsFixed(0);
                          endView = '$calculatedStartValue метров';
                        }
                        _currentRangeValues = rangeValues;
                      });
                    }
                    ),
              ),
              const Spacer(),
              SizedBox(
                height: 48,
                child: Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                    vertical: 15
                                )
                            )
                          ),
                          onPressed: () {
                            print('show button was tapped');
                          },
                          child: Text('Показать ($countOfPlaces)'.toUpperCase()),
                        )
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}