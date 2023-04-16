import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyFormPage extends StatefulWidget {
  @override
  _MyFormPageState createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  void _saveForm() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('name', _nameController.text);
    prefs.setString('email', _emailController.text);
  }

  static const crop = 'Rice';
  static const pest = 'Falsesmut';

  void main() {
    List<List<String>> coffeeFungus = [
      ['Black Rot', 'Rust'],
      ['Copper oxychloride 50% WP']
    ];
    List<List<String>> teaFungus = [
      ["Blister Blight"],
      ['Hexaconazole 5% EC'],
      ['Greyblight', 'Red Rust', 'Die-Back', 'Black Rot'],
      ['Carbendazim 12%+ Mancozeb 63%WP']
    ];
    List<List<String>> cottonFungus = [
      ['Leafspot'],
      ['Carbendazim 50%WP'],
      ['Angular Leaf spot'],
      ['Carboxin 75% WP'],
      ['Seedling Disease'],
      ['Fluxapyroxad 333 g/l FS'],
      ['Grey Mildew'],
      ['Kresoxim-methyl 44.3% SC'],
      ['Alternaria leafspot'],
      ['Propiconazole 25% EC'],
      ['Alternaria Leafblight'],
      ['Pyraclostrobin 20% WG'],
      ['Root Rot'],
      ['Tetraconazole 11.6% w/w (12.5% w/v) SL'],
      ['Seedborn Disease'],
      ['Thiram 75% WS'],
      ['Bacterial Blight'],
      ['Carboxin 37.5% + Thiram 37.5% WS']
    ];
    List<List<String>> maizeFungus = [
      ['Turcicum Leaf Blight', 'Rust'],
      ['Kresoxim-methyl 44.3% SC'],
      ['Leafblight', 'Downy Mildew'],
      ['Mancozeb 75% WP'],
      ['Seedling Blight'],
      ['Thiram 40% FS'],
      ['Seed Rot'],
      ['Carbendazim 25% + Mancozeb 50% WS']
    ];
    List<List<String>> wheatFungus = [
      ['Karnal Bunt'],
      ['Bitertanol 25% WP'],
      ['Loosesmut'],
      ['Carbendazim 50% WP'],
      ['Flagsmut'],
      ['Carboxin 75% WP'],
      ['Rust', 'Leaf blight'],
      ['Kresoxim-methyl 44.3% SC'],
      ['Brown Rust', 'Black Rust'],
      ['Mancozeb 75% WP'],
      ['Powdery Mildew'],
      ['Sulphur 80% WG'],
      ['Yellow rust'],
      ['Tebuconazole 25% WG'],
      ['Yellow rust', 'Bunt'],
      ['Triadimefon 25% WP'],
      ['Termites', 'Aphids'],
      ['Imidacloprid 18.5% + Hexaconazole 1.5% FS']
    ];
    List<List<String>> riceFungus = [
      ['Blast', 'Brown leaf'],
      ['Aureofungin 46.15% w/v SP'],
      ['Leafspot'],
      ['Captan 75% WP'],
      ['Brownleaf Spot'],
      ['Carbendazim 5% GR'],
      ['Sheath Blight', 'Aerial Phase'],
      ['Carbendazim 50%WP'],
      ['False smut', 'Bacterial leaf blight'],
      ['Copper Hydroxide 53.8% DF'],
      ['Falsesmut'],
      ['Copper Hydroxide 77% WP'],
      ['Sheath Rot'],
      ['Hexaconazole 0.5 %GR'],
      ['Narrow leaf spot'],
      ['Propineb 70 % WP'],
      ['Leaf Blast', 'Neck Blast'],
      ['Flubendiamide 7.5% + Kresoxim-Methyl 37.5% SC'],
      ['Dirty Panicle'],
      ['Fluopyram17.7% w/w+Tebuconazole 17.7%w/w SC'],
      ['Grain Discoloration from Fungus Complex'],
      ['Prochloraz 34.8% + Propiconazole 7.8% w/w EC']
    ];

    getFungus(String crop, String pest) {
      if (crop == 'Rice') {
        bool check = true;
        int j = 0;
        while (check == true) {
          if (riceFungus[j].contains(pest)) {
            return riceFungus[j + 1][0];
            check = false;
          } else {
            j = j + 2;
          }
        }
      } else if (crop == 'Wheat') {
        bool check = true;
        int j = 0;
        while (check == true) {
          if (wheatFungus[j].contains(pest)) {
            return wheatFungus[j + 1][0];
            check = false;
          } else {
            j = j + 2;
          }
        }
      } else if (crop == 'Maize') {
        bool check = true;
        int j = 0;
        while (check == true) {
          if (maizeFungus[j].contains(pest)) {
            return maizeFungus[j + 1][0];
            check = false;
          } else {
            j = j + 2;
          }
        }
      } else if (crop == 'Cotton') {
        bool check = true;
        int j = 0;
        while (check == true) {
          if (cottonFungus[j].contains(pest)) {
            return cottonFungus[j + 1][0];
            check = false;
          } else {
            j = j + 2;
          }
        }
      } else if (crop == 'Tea') {
        bool check = true;
        int j = 0;
        while (check == true) {
          if (teaFungus[j].contains(pest)) {
            return teaFungus[j + 1][0];
            check = false;
          } else {
            j = j + 2;
          }
        }
      } else if (crop == 'Coffee') {
        bool check = true;
        int j = 0;
        while (check == true) {
          if (coffeeFungus[j].contains(pest)) {
            return coffeeFungus[j + 1][0];
            check = false;
          } else {
            j = j + 2;
          }
        }
      }
      return null;
    }

    String? output = getFungus(crop, pest);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(80.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Enter Crop and Problem",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 44.0,
          ),
          TextField(
            controller: _nameController,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              hintText: "Crop",
            ),
          ),
          const SizedBox(
            height: 26.0,
          ),
          TextField(
            controller: _emailController,
            keyboardType: TextInputType.streetAddress,
            decoration: const InputDecoration(
              hintText: "Problem",
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          const SizedBox(
            height: 88.0,
          ),
          SizedBox(
            width: double.infinity,
            child: RawMaterialButton(
              fillColor: const Color.fromARGB(255, 27, 174, 42),
              elevation: 0.0,
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              child: const Text(
                'Calculate',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.setString('crop', _nameController.text);
                await prefs.setString('pest', _emailController.text);
                main();
              },
            ),
          )
        ],
      ),
    );
  }
}
