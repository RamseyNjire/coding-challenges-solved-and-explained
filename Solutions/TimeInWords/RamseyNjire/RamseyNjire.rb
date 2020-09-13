def timeInWords(h, m)

  time_words = {1 => "one",
                2 => "two",
                3 => "three",
                4 => "four",
                5 => "five",
                6 => "six",
                7 => "seven",
                8 => "eight",
                9 => "nine",
                10 => "ten",
                11 => "eleven",
                12 => "twelve",
                13 => "thirteen",
                14 => "fourteen",
                15 => "quarter",
                16 => "sixteen",
                17 => "seventeen",
                18 => "eighteen",
                19 => "nineteen",
                20 => "twenty",
                21 => "twenty one",
                22 => "twenty two",
                23 => "twenty three",
                24 => "twenty four",
                25 => "twenty five",
                26 => "twenty six",
                27 => "twenty seven",
                28 => "twenty eight",
                29 => "twenty nine",
                30 => "half"
              }

  case
    when m == 1
      return "#{time_words[m]} minute past #{time_words[h]}"
    when 1 < m && m < 15
      return "#{time_words[m]} minutes past #{time_words[h]}"
    when m == 15 || m == 30
      return "#{time_words[m]} past #{time_words[h]}"
    when 15 < m && m < 30
      return "#{time_words[m]} minutes past #{time_words[h]}"
    when 30 < m && m != 45
      return "#{time_words[(60-m)]} minutes to #{time_words[h+1]}"
    when m == 45
      return "#{time_words[60-m]} to #{time_words[h+1]}"
    when m == 00
      return "#{time_words[h]} o' clock"
  end
  
end