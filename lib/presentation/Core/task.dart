class Task {
  final String title;
  final String description;
  final String dueDate;
  final String priority;
  final String createdDate;
  bool isCompleted;
  Task({
    required this.title,
    required this.description,
    required this.dueDate,
    required this.priority,
    required this.createdDate,
    this.isCompleted = false,}
      );
  List<Task> x =[
    Task(
  title:'Finishing onboarding flow mockups ',
  description : 'Call the clinic and schedule a cleaning',
   dueDate: 'Nov 4',
  priority:'High',
      createdDate:'Nov 1',
      isCompleted: false,

  ),
    Task(
      title: 'Grocery shopping',
      description: 'Milk, eggs, bread, and vegetables for the week.',
      dueDate: 'Nov 3',
      priority: 'Low',
      createdDate: 'Nov 1, 2026',
      isCompleted: false,
    ),
    Task(
      title: 'Submit quarterly report',
      description: 'Compile Q3 metrics and send to the finance team.',
      dueDate: 'Oct 30',
      priority: 'High',
      createdDate: 'Oct 12, 2026',
      isCompleted: false,
    ),
    Task(
      title: 'Book dentist appointment',
      description: 'Call the clinic and schedule a cleaning.',
      dueDate: 'Nov 10',
      priority: 'Medium',
      createdDate: 'Nov 2, 2026',
      isCompleted: false,
    ),
    Task(
      title: 'Read "Atomic Habits" - ch. 4',
      description: 'Continue the habit-stacking chapter before bed.',
      dueDate: 'Nov 2',
      priority: 'Low',
      createdDate: 'Oct 25, 2026',
      isCompleted: true,
    ),


  ];

}
