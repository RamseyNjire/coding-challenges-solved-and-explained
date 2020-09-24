function angryProfessor(k, a) {
  return a.filter((value) => value <= 0).length >= k ? "NO" : "YES";
}
