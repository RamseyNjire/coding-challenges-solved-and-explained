# Lisa believes a problem to be special if its index (within a chapter)
# is the same as the page number where it's located
def workbook(_n, k, arr)
  arr
    .flat_map { |problems_per_page| (1..problems_per_page).each_slice(k).to_a }
    .select.with_index do |problems, index|
      # Chapter Starts At 1 Instead Of 0
      chapter = index + 1
      # Check If The Problems Array Contains The Chapter
      problems.include?(chapter)
    end
    .count
end
