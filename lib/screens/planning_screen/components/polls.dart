import 'package:polls/polls.dart';
import 'package:flutter/material.dart';

class PlanningPolls extends StatefulWidget {
  const PlanningPolls({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PollsPlanning();
}

class _PollsPlanning extends State<PlanningPolls> {
  @override
  Widget build(BuildContext context) {
    double option1 = 1.0;
    double option2 = 0.0;
    double option3 = 1.0;
    double option4 = 1.0;
    double option5 = 1.0;
    double option6 = 3.0;
    double option7 = 2.0;
    double option8 = 1.0;

    String user = "king@mail.com";
    Map usersWhoVoted = {'sam@mail.com': 3, 'mike@mail.com': 4, 'john@mail.com': 1, 'kenny@mail.com': 1};
    String creator = "eddy@mail.com";

    return Polls(
      children: [
        // This cannot be less than 2, else will throw an exception
        Polls.options(title: 'Cairo', value: option1),
        Polls.options(title: 'Mecca', value: option2),
        Polls.options(title: 'Denmark', value: option3),
        Polls.options(title: 'Mogadishu', value: option4),
      ],
      question: Text('What is the capital of Egypt'),
      currentUser: user,
      creatorID: creator,
      voteData: usersWhoVoted,
      userChoice: usersWhoVoted[user],
      onVoteBackgroundColor: Colors.blue,
      leadingBackgroundColor: Colors.blue,
      backgroundColor: Colors.white,
      onVote: (choice) {
        setState(() {
          usersWhoVoted[user] = choice;
        });
        if (choice == 1) {
          setState(() {
            option1 += 1.0;
          });
        }
        if (choice == 2) {
          setState(() {
            option2 += 1.0;
          });
        }
        if (choice == 3) {
          setState(() {
            option3 += 1.0;
          });
        }
        if (choice == 4) {
          setState(() {
            option4 += 1.0;
          });
        }
      },
    );
  }
}
