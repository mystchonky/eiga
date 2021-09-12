String currentSeason() {
  final currentDate = DateTime.now();
  switch ((currentDate.month - 1) % 12) {
    case 12:
    case 1:
    case 2:
      return "WINTER";
    case 3:
    case 4:
    case 5:
      return "SPRING";
    case 6:
    case 7:
    case 8:
      return "SUMMER";
    case 9:
    case 10:
    case 11:
      return "FALL";
  }
  return "SPRING";
}

String upcomingSeason() {
  final currentDate = DateTime.now();
  final nextMonth = DateTime(currentDate.year, currentDate.month + 1, 0).month;
  switch (nextMonth) {
    case 12:
    case 1:
    case 2:
      return "SPRING";
    case 3:
    case 4:
    case 5:
      return "SUMMER";
    case 6:
    case 7:
    case 8:
      return "FALL";
    case 9:
    case 10:
    case 11:
      return "WINTER";
  }
  return "SPRING";
}

int currentYear() {
  final currentDate = DateTime.now();
  if (currentDate.month == 12) {
    return currentDate.year + 1;
  } else {
    return currentDate.year;
  }
}

int upcomingYear() {
  final currentDate = DateTime.now();
  final nextMonth = DateTime(currentDate.year, currentDate.month + 1, 0).month;
  if (nextMonth == 12) {
    return currentDate.year + 1;
  } else {
    return currentDate.year;
  }
}
