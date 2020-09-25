function gradingStudents(grades) {
  function checkRoundedGrade(grade) {
    if (grade < 38) return grade;
    let gradeRounded = Math.ceil(grade / 5) * 5;
    if (gradeRounded - grade < 3) return gradeRounded;
    else return grade;
  }

  return grades.map((grade) => checkRoundedGrade(grade));
}
