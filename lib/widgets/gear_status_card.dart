import 'package:flutter/material.dart';
import 'package:maintenace_app/widgets/pie_chart_widget.dart';

class StatutGlobalSection extends StatelessWidget {
  const StatutGlobalSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, double> dataMap = {
      "En activité": 120,
      "Critique": 2,
      "À surveiller": 3,
    };

    final List<Color> colorList = [
      Colors.green,
      Colors.red,
      Colors.orange,
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
            'Statut Global',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
            Row(
              children: [
                SizedBox(width: 8),
              _buildInfoCard(
                icon: Icons.build,
                title: "Total\nGears",
                count: "120",
                subtitle: "En activité",
                bgColor: Colors.blue.shade100,
                textColor: Colors.blue,
              ),
                SizedBox(width: 8),
                _buildInfoCard(
                  icon: Icons.error,
                  title: "Predicted\nFaults",
                  count: "2",
                  subtitle: "Critique",
                  bgColor: Colors.red.shade100,
                  textColor: Colors.red,
                ),
                SizedBox(width: 8),
                _buildInfoCard(
                  icon: Icons.hourglass_bottom,
                  title: "Near\nEnd-of-Life",
                  count: "3",
                  subtitle: "à surveiller",
                  bgColor: Colors.orange.shade100,
                  textColor: Colors.orange,
                ),
              ],
            ),
            SizedBox(height: 16),
            PieChartWidget(
              dataMap: {
                "En activité": 100,
                "À surveiller": 15,
                "Critique": 5,
              },
              colorList: [Colors.blue, Colors.orange, Colors.red],
              
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String count,
    required String subtitle,
    required Color bgColor,
    required Color textColor,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Icon(icon, size: 20, color: textColor),
                SizedBox(width: 4),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                      fontSize: 13,
                    ),
                    maxLines: 2,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              count,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 12,
                color: textColor.withOpacity(0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
