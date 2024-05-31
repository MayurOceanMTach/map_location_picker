import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:map_location_picker/map_location_picker.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String address = "null";
  String autocompletePlace = "null";
  Prediction? initialValue;

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('location picker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PlacesAutocomplete(
<<<<<<< Updated upstream
            searchController: _controller,
            apiKey: "YOUR_API_KEY",
            mounted: mounted,
            hideBackButton: true,
            onGetDetailsByPlaceId: (PlacesDetailsResponse? result) {
=======
<<<<<<< Updated upstream
            apiKey: "AIzaSyA6vKEF9G12zSbgsJBcTxUVXvGzlnBnMJ4",
=======
            apiKey: " ",
>>>>>>> Stashed changes
            onPlacesDetailsResponse: (PlacesDetailsResponse? result) {
>>>>>>> Stashed changes
              if (result != null) {
                setState(() {
                  autocompletePlace = result.result.formattedAddress ?? "";
                });
              }
            },
          ),
          OutlinedButton(
            child: Text('show dialog'.toUpperCase()),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Example'),
                    content: PlacesAutocomplete(
                      apiKey: "",
                      searchHintText: "Search for a place",
                      mounted: mounted,
                      hideBackButton: true,
                      initialValue: initialValue,
                      onSuggestionSelected: (value) {
                        setState(() {
                          autocompletePlace = value.structuredFormatting?.mainText ?? "";
                          initialValue = value;
                        });
                      },
                      onGetDetailsByPlaceId: (value) {
                        setState(() {
                          address = value?.result.formattedAddress ?? "";
                        });
                      },
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Done'),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Google Map Location Picker\nMade By Arvind 😃 with Flutter 🚀",
              textAlign: TextAlign.center,
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          TextButton(
            onPressed: () => Clipboard.setData(
              const ClipboardData(text: "https://www.mohesu.com"),
            ).then(
              (value) => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Copied to Clipboard"),
                ),
              ),
            ),
            child: const Text("https://www.mohesu.com"),
          ),
          const Spacer(),
          Center(
            child: ElevatedButton(
              child: const Text('Pick location'),
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
<<<<<<< Updated upstream
=======
<<<<<<< Updated upstream
                      return GoogleMapLocationPicker(
<<<<<<< Updated upstream
                        currentLocationButtonColor: Colors.black,
                        currentLocationButtonbackgroundColor: Colors.white,
                        apiKey: "AIzaSyA6vKEF9G12zSbgsJBcTxUVXvGzlnBnMJ4",
=======
>>>>>>> Stashed changes
                      return MapLocationPicker(
                        apiKey: "YOUR_API_KEY",
                        popOnNextButtonTaped: true,
<<<<<<< Updated upstream
=======
>>>>>>> Stashed changes
=======
                        apiKey: "AIzaSyA6vKEF9G12zSbgsJBcTxUVXvGzlnBnMJ4",
>>>>>>> Stashed changes
>>>>>>> Stashed changes
                        currentLatLng: const LatLng(29.146727, 76.464895),
                        onNext: (GeocodingResult? result) {
                          if (result != null) {
                            setState(() {
                              address = result.formattedAddress ?? "";
                            });
                          }
                        },
                        onSuggestionSelected: (PlacesDetailsResponse? result) {
                          if (result != null) {
                            setState(() {
                              autocompletePlace = result.result.formattedAddress ?? "";
                            });
                          }
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ),
          const Spacer(),
          ListTile(
            title: Text("Geocoded Address: $address"),
          ),
          ListTile(
            title: Text("Autocomplete Address: $autocompletePlace"),
          ),
          const Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}
