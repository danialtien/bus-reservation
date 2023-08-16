import 'package:bus_reservation_udemy/datasource/data_source.dart';
import 'package:bus_reservation_udemy/datasource/dummy_data_source.dart';
import 'package:bus_reservation_udemy/models/bus_reservation.dart';
import 'package:bus_reservation_udemy/models/bus_schedule.dart';
import 'package:bus_reservation_udemy/models/but_route.dart';
import 'package:flutter/material.dart';

class AppDataProvider extends ChangeNotifier {
  List<BusSchedule> _scheduleList = [];
  List<BusSchedule> get scheduleList => _scheduleList;
  final DataSource _dataSource = DummyDataSource();

  Future<BusRoute?> getRouteByCityFromAndCityTo(
      String fromCity, String toCity) {
    return _dataSource.getRouteByCityFromAndCityTo(fromCity, toCity);
  }

  Future<List<BusSchedule>> getScheduleByRouteName(String routeName) {
    return _dataSource.getSchedulesByRouteName(routeName);
  }
  
  Future<List<BusReservation>> getReservationsByScheduleAndDepartureDate(int scheduleId, String departureDate) {
    return _dataSource.getReservationsByScheduleAndDepartureDate(scheduleId, departureDate);
  }
}
