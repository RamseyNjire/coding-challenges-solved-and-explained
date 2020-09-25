def workbook(n: Int, k: Int, arr: Array[Int]): Int = {
  val problemsGroupedByK =
    arr.flatMap { problemsPerPage =>
      // Range Into Array, Grouped By k
      (1 to problemsPerPage) to(Array) grouped(k)
    }

  val specialProblems =
    problemsGroupedByK.zipWithIndex.filter { case (problems, index) =>
      val chapter = index + 1
      problems.contains(chapter)
    }

  specialProblems.length
}
