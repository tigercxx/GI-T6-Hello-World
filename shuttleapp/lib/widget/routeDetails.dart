import 'package:flutter/material.dart';
import 'package:shuttleapp/model/route_model.dart';

class RouteDetails extends StatelessWidget {
  final RouteModel route;
  final String availableDays;
  const RouteDetails(
      {super.key, required this.route, required this.availableDays});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 30,
            width: 500,
            alignment: Alignment.topLeft,
            color: const Color(0xFF6B8972),
            child: const BackButton()),
        Container(
          color: const Color(0xFF6B8972),
          width: MediaQuery.of(context).size.width,
          height: 190,
          padding: const EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 30,
                width: 500,
                color: Colors.transparent,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, top: 5),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Text(
                    route.stops.first.name,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 30,
                width: 500,
                color: Colors.transparent,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, top: 5),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Text(
                    route.stops.last.name,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 30,
                width: 500,
                color: Colors.transparent,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, top: 5),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Text(
                    availableDays,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 30,
                width: 500,
                color: Colors.transparent,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, top: 5),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Text(
                    "\$${route.price} per trip",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
