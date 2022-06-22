import 'package:flutter/material.dart';
import 'package:tugas_akhir_mas_panji/login_page.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 0,
        elevation: 0.7,
        title: const Text(
          "Lainnya",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Image.asset('assets/images/profile.png'),
          ),
          Container(
            height: 8,
            color: const Color(0xffE0E0E0),
            width: double.infinity,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Pengaturan",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff333333),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 14),
                settingDivider(),
                settingItem("Fasilitas"),
                settingDivider(),
                settingItem("Kamar"),
                settingDivider(),
                settingItem("Pelanggan"),
                settingDivider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builder) => const LoginPage(),
                            ),
                          );
                        },
                        child: const Text(
                          "Keluar",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff3267E3),
                          ),
                        ),
                      ),
                      const Text(
                        "v 1.0.0",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff9E9E9E),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget settingItem(String itemTitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(itemTitle),
          const Icon(
            Icons.chevron_right,
            color: Color(0xff3267E3),
          ),
        ],
      ),
    );
  }

  Widget settingDivider() {
    return const Divider(
      height: 2,
      thickness: 1,
      color: Color(0xffD9D9D9),
    );
  }
}
