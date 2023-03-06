// ignore_for_file: file_names

import 'package:aston_app/application/Pages/Models%20Page/DB11Versions.dart';
import 'package:aston_app/application/Pages/Models%20Page/DBSVersions.dart';
import 'package:aston_app/application/Pages/Models%20Page/DBXVersions.dart';
import 'package:aston_app/application/Pages/Models%20Page/F1Team.dart';
import 'package:aston_app/application/Pages/Models%20Page/VantageVersions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AstonModels extends StatelessWidget {
  const AstonModels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 150,
                child: Image.network(
                  'https://logos-world.net/wp-content/uploads/2021/03/Aston-Martin-Logo-1972-1984.png',
                ),
              ),
              Container(
                width: 235,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(0, 89, 79, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(125),
                    topRight: Radius.circular(125),
                    bottomLeft: Radius.circular(125),
                    bottomRight: Radius.circular(125),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Deportivos',
                    style: GoogleFonts.josefinSlab(
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(193, 255, 93, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 210,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          child: Image.network(
                            'https://configurator.api-services.astonmartin.com/iod/PE/AM510/2048/N4IghgdglgtmAuUD2EDOIBcBtAugGhAGMwYBTAJzE1CgBNMQAhAZQH0BhFAMygHNWAogA94rAEwgCSAA6IU6DMAC+SgoW59qIOgwCCAWQCsARgAMkkDLlot6iD16YsIAMynjATgsB2AArt2C11fZmMggFVjMIJGRgARcxjmXWiQdkYxVPYAMWYXC2yAcWNvC30ACX8AeTiBABlCgBU4gCU6ssr2GoEWpCQuKulSCAtfADk61N8WwsSQEPZfC2ZGd2XGAVTmbLEADmXmAHV8gmZG2eXwxoA2C0a631KCRt8Eu5bwiWeWw6+QRsOAGlbgQAGotRipQ4tMSGSSgRiBRRMJEgOq7UwSFR4UABLR4jDzAQuMLY0DldrIikMfS6Rr7MkgZjhLTMmmNRosxn3LQ8wnolz5bks5GchjozEgFQ4bEgYYANyg5BQZAg8C0OkJCtYY1IAHdWABNJDkADWFisyBsyOgvAAFuqMFwwAAbVCkFRKIA',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DB11Versions(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(0, 89, 79, 1),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Ver mas detalles',
                      style: TextStyle(
                        color: Color.fromRGBO(193, 255, 93, 1),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 210,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      child: Image.network(
                        'https://configurator.api-services.astonmartin.com/iod/PE/AM886/2048/N4IghgdglgtmAuUD2EDOIBcBtAugGhAGMwYBTAJzE1CgBNMQAhAZQH0BhFAMygHNWAogA94rAEwgCSAA6IU6DMAC+SgoW59qIOgwCCAWQAchgGySQMuWi3qIPXpiwgAzAAYxEgroCqARgDs5uyMroEE7ABizL7mAowACmYEEQDivobmABIAMmnmANICAJpJIPqZ8ewA8gAiArkAKjUAStnm5ZW1AswArhDkSEhcVdKkEObxjNkxBPGZ7DMg8c0prubN+a6lzCGLzBEALM7mzMwA6scEzA15V94NEeYN2fFhIA3xNYsNzd6e780zgBOJ5nfI1J5FVyXEAANWarkeBDOzQO3kkoHY7C0WIY8QEzgkKjwoGY6MUIDJDH0DWeIGJoDpFKZIGyhlcIIZ73JjPJrMMvgO9KUOGJIDGADcoAMIGQIPAtDoMJSANYATy4YAANlrzJZkNYKdBeAALBUYTVa1CkFRKIA',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DBXVersions(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(0, 89, 79, 1),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                child: const Text(
                  'Ver mas detalles',
                  style: TextStyle(
                    color: Color.fromRGBO(193, 255, 93, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 210,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      child: Image.network(
                        'https://configurator.api-services.astonmartin.com/iod/PE/AM608/2048/N4IghgdglgtmAuUD2EDOIBcBtAugGhAGMwYBTAJzE1CgBNMQAhAZQH0BhFAMygHNWAogA94rAEwgCSAA6IU6DMAC+SgoW59qIOgwCCAWQBsABgAckkDLlot6iD16YsIAMzGxATgsB2AArt2C11fZgBGIIBVUIBWC0ZGABEAaTiEgBUXOIB5AA1vOOZdcIJ2RncLADEAcWiAFkqAJQFikH0ACX8shIEAGSq0hIaei3bO7oakJC52ABskVFJ6Al9dCszlgDke4wtfBqqd5eZ2XwtmMpbmCrFzAmY0g7OItMMLNJ7ffII03wTDkDSDSibwaAHUWmlQUkviAAGoNdj-UENDwwnKMBqHUABLQ4jAgXwCFzhFR4UBtYaKEAUhhDYxeUmgZgRLTMhj6NJpFmMgGU0DvBg9UwuTI8rlacX4oXlFQ4UkgUgQABuUHIKDIEHgWh0+IAWoqqmByLRFRYrMgbFToLwABZajBcMAzBYqJRAA',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VantageVersions(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(0, 89, 79, 1),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                child: const Text(
                  'Ver mas detalles',
                  style: TextStyle(
                    color: Color.fromRGBO(193, 255, 93, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 210,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      child: Image.network(
                        'https://configurator.api-services.astonmartin.com/iod/PE/AM706/2048/N4IghgdglgtmAuUD2EDOIBcBtAugGhAGMwYBTAJzE1CgBNMQAhAZQH0BhFAMygHNWAogA94rAEwgCSAA6IU6DMAC+SgoW59qIOgwCCAWQDsABgBskkDLlot6iD16YsIAMzGxhi4YAK7dhd1vZgBGAIBVYIkCRgARABUopmZdUIJ2RmNPNIAxZhcLAUZvAA4LfQAJXwB5GIEAGQBxOJiAJTqyyvYagRakJC52ABskVFJ6Am8ASW99C28AOTrzCZaG4znmdm8LZgzUkF2BfeZssVKCZmYAdXyLuIbbg7C45ZA4uu8st+8Y-biWsKvf5XACsFjiVwA0q8AGotRj7K4tACcAEVJKA-FosRgQN4BC5Qio8KByu1FCAyQx9Lo4qViaB3lombi6sUXPkGW8wsyeaziu4QFyrnEtCLqZ1uvo4nEeSocMSQKQIAA3KDkFBkCDwLQ6XHMADWAE8uGBBoMLFZkDYKdBeAALHUYU2DUYqJRAA',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DBSVersions(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(0, 89, 79, 1),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                child: const Text(
                  'Ver mas detalles',
                  style: TextStyle(
                    color: Color.fromRGBO(193, 255, 93, 1),
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                child: Image.network(
                  'https://logos-world.net/wp-content/uploads/2021/03/Aston-Martin-Logo-1972-1984.png',
                ),
              ),
              Container(
                width: 235,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(0, 89, 79, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(125),
                    topRight: Radius.circular(125),
                    bottomLeft: Radius.circular(125),
                    bottomRight: Radius.circular(125),
                  ),
                ),
                child: Center(
                  child: Text(
                    'F1 Team',
                    style: GoogleFonts.josefinSlab(
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(193, 255, 93, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 160,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      child: Image.network(
                        'https://assets.astonmartinf1.com/public/cms/4DzVngSS7UOuZ4EYqq9yfG/77c862179855624cdb741dfba0d6e73d/F12305_145237GT2R5410_copy.jpg?&h=600&w=1440&fit=thumb',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 160,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      child: Image.network(
                        'https://assets.astonmartinf1.com/public/cms/53MvCUpeHYFQfxa3NW8sju/4bd66ad18e9da3bbda0bf86e2823efb0/F12305_142256_54I8465_copy_gallery.jpg?&h=600&w=1440&fit=thumb',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 160,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      child: Image.network(
                        'https://assets.astonmartinf1.com/public/cms/37ItSeJAenO0Lv9qaPxV4O/d1d884e7eac92ff774441dac4d4f3d0c/F12305_111232_U1A9937__1_.jpg?&h=600&w=1440&fit=thumb',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const F1Versions(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(0, 89, 79, 1),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                icon: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color.fromRGBO(193, 255, 93, 1),
                ),
                label: const Text(
                  'Ver mas detalles',
                  style: TextStyle(
                    color: Color.fromRGBO(193, 255, 93, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
