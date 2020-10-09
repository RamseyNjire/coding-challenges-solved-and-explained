def increment_string(input)
  sl = input.length

  nums = /(?<=\w)[0-9]+$/.match(input)

  if nums.nil? && (input.to_i == sl)
    nums = (input.to_i + 1).to_s
    input.clear
  elsif nums.nil?
    nums = 1.to_s
  else
    nums = nums[0]
    iri = input.rindex(nums)
    input = input.slice(0...iri) if iri
    nums = (nums.to_i + 1).to_s
  end

  zeros = sl - (input.length + nums.length)
  zeros = zeros >= 0 ? zeros : 0

  input.concat("#{'0' * zeros}#{nums}")
end
