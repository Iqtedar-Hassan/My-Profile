class ProfileUser {
  final String name;
  final String email;
  final String password;
  final String imagePath;
  final String phone;
  final String university;
  final String program;
  final String semester;
  final String role;
  final String about;

  const ProfileUser({
    required this.name,
    required this.email,
    required this.password,
    required this.imagePath,
    required this.phone,
    required this.university,
    required this.program,
    required this.semester,
    required this.role,
    required this.about,
  });
}

const List<ProfileUser> demoUsers = [
  ProfileUser(
    name: 'Iqtedar Hassan',
    email: '64280@students.riphah.edu.pk',
    password: 'Iqtedar@123',
    imagePath: 'Images/Iqtedar.png',
    phone: '+92 344 7466814',
    university: 'Riphah International University',
    program: 'BS Software Engineering',
    semester: '5th Semester',
    role: 'Software Engineer',
    about: 'I am a Software Engineering student interested in programming, databases, mobile app development and website development.',
  ),
  ProfileUser(
    name: 'M. Adeel',
    email: '64010@students.riphah.edu.pk',
    password: 'Adeel@123',
    imagePath: 'Images/Adeel.png',
    phone: '03138755261',
    university: 'Riphah International University',
    program: 'BS Software Engineering',
    semester: '5th Semester',
    role: 'Software Engineering Student',
    about: 'I am a Software Engineering student interested in software development.',
  ),
];
