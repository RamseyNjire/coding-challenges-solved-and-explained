def fair_rations(a)
  return 'NO' if a.sum.odd?   # [1, 2] == 3
  return 0 if a.all?(&:even?) # [2, 2]

  bread_given = 0

  a.each_index do |i|
    next unless a[i].odd?

    a[i] += 1
    a[i + 1] += 1
    bread_given += 2
  end

  bread_given
end
