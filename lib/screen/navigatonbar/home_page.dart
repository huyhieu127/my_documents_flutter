import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          /*Header*/
          _buildHeader(),
          /*Remind*/
          _buildRemind(),
          /*Search box*/
          _buildSearchBox(),
          /*Category*/
          _buildCategory(),
          /*New doctor*/
          const Padding(
            padding: EdgeInsets.only(left: 24, right: 24, bottom: 16),
            child: Text(
              "Near Doctor",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          _buildNewDoctor(),
          _buildNewDoctor(),
          _buildNewDoctor(),
          _buildNewDoctor()
        ],
      ),
    );
  }

  Widget _buildHeader() => Padding(
        padding: const EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Hello,",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "Hi James",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://thumbs.dreamstime.com/z/faces-avatar-circle-portrait-young-boy-glasses-vector-illustration-eps-flat-cartoon-style-83654284.jpg"),
              backgroundColor: Colors.blue,
              radius: 28,
            ),
          ],
        ),
      );

  Widget _buildRemind() => Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.woolha.com/media/2020/03/eevee.png'),
                      backgroundColor: Colors.white,
                      radius: 24,
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Dr.Imran Syahir",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "General Doctor",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Divider(height: 1, color: Colors.white),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: const [
                          Icon(Icons.calendar_today_outlined,
                              size: 16, color: Colors.white),
                          SizedBox(width: 8),
                          Text(
                            "Sunday, 12 June",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: const [
                          Icon(Icons.schedule_outlined,
                              size: 16, color: Colors.white),
                          SizedBox(width: 8),
                          Text(
                            "11:00 - 12:00 AM",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );

  Widget _buildSearchBox() => Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          color: const Color(0xFFFAFAFA),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: const [
                Icon(Icons.search, color: Color(0xFF8696BB)),
                SizedBox(width: 12),
                // Text(
                //   "Search doctor or health issue",
                //   style: TextStyle(
                //       fontSize: 15,
                //       color: Color(0xFF8696BB),
                //       fontWeight: FontWeight.w400),
                // ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: "Search doctor or health issue",
                      hintStyle: TextStyle(color: Color(0xFF8696BB)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );

  Widget _buildCategory() => Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: const [
                CircleAvatar(
                  backgroundColor: Color(0xFFFAFAFA),
                  radius: 36,
                  child: Icon(
                    Icons.coronavirus_outlined,
                    color: Colors.blue,
                    size: 28,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Covid 19",
                  style: TextStyle(
                    color: Color(0xFF8696BB),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            Column(children: const [
              CircleAvatar(
                backgroundColor: Color(0xFFFAFAFA),
                radius: 36,
                child: Icon(
                  Icons.person_add,
                  color: Colors.blue,
                  size: 28,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Doctor",
                style: TextStyle(
                  color: Color(0xFF8696BB),
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              )
            ]),
            Column(children: const [
              CircleAvatar(
                backgroundColor: Color(0xFFFAFAFA),
                radius: 36,
                child: Icon(
                  Icons.add,
                  color: Colors.blue,
                  size: 28,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Medicine",
                style: TextStyle(
                  color: Color(0xFF8696BB),
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              )
            ]),
            Column(children: const [
              CircleAvatar(
                backgroundColor: Color(0xFFFAFAFA),
                radius: 36,
                child: Icon(
                  Icons.home_work_sharp,
                  color: Colors.blue,
                  size: 28,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Hopital",
                style: TextStyle(
                  color: Color(0xFF8696BB),
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              )
            ]),
          ],
        ),
      );

  Widget _buildNewDoctor() => Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Card(
          elevation: 4,
          shadowColor: Colors.black26,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.woolha.com/media/2020/03/eevee.png'),
                      backgroundColor: Color(0xFFFAFAFA),
                      radius: 24,
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Dr.Joseph Brostito",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Dental Specialist",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF8696BB),
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on_outlined,
                          color: Color(0xFF8696BB),
                        ),
                        Text(
                          "1.2 KM",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF8696BB),
                              fontSize: 14),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Divider(height: 1, color: Color(0x558696BB)),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: const [
                          Icon(Icons.schedule_outlined,
                              size: 16, color: Colors.orangeAccent),
                          SizedBox(width: 8),
                          Text(
                            "4,8 (120 Reviews)",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.orangeAccent,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: const [
                          Icon(Icons.schedule_outlined,
                              size: 16, color: Colors.blue),
                          SizedBox(width: 8),
                          Text(
                            "Open at 17.00",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
