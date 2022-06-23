import 'package:flutter/material.dart';
import 'package:task1/common_widgets/opportunity_card.dart';

class AllOpportunities extends StatelessWidget {
  const AllOpportunities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        OpportunityCard(),
        OpportunityCard(),
        OpportunityCard(),
        OpportunityCard(),
        OpportunityCard(),
        OpportunityCard(),
        OpportunityCard(),
      ],
    );
  }
}