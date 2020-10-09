def sortme(courses)
  courses.map { |c| c.split('-') }.sort { |a, b| [a.last, a.first] <=> [b.last, b.first] }.map { |c| c.join('-') }
end
