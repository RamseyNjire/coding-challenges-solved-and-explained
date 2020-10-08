# frozen_string_literal: true

require 'markdown-tables'

require './challenges.rb'

solutions_path = './Solutions'
explainers_path = './Explainers'

hackerrank_solutions_path = File.join(solutions_path, 'Hackerrank')
hackerrank_explainers_path = File.join(explainers_path, 'Hackerrank')
hackerrank_challenge_base_path = 'https://www.hackerrank.com/challenges/'

codewars_solutions_path = File.join(solutions_path, 'Codewars')
codewars_explainers_path = File.join(explainers_path, 'Codewars')
codewars_challenge_base_path = 'https://www.codewars.com/kata/'

LABELS =
  %w[Challenges Solutions Explainers].freeze

sanitize_string =
  ->(s) { s.each_char.select { |c| c =~ /[a-z|A-Z|0-9]/ }.join }

challenge_to_markdown =
  lambda { |title, solution, explainer, challenge_url|
    [
      "[#{title}](#{challenge_url})",
      "[Solution](#{solution})",
      "[Explainer](#{explainer})"
    ]
  }

HACKERRANK_FORMATTED =
  HACKERRANK
  .map do |challenge|
    # Ensure `:title` Is Present
    unless challenge.key?(:title)
      pp challenge
      throw 'Challenge Invalid'
    end

    title = challenge[:title]

    # Generate Default Slug
    unless challenge.key?(:slug)
      slug = title.downcase.gsub(' ', '-')
      challenge[:slug] = slug
    end

    # Generate Default Challenge URL
    challenge[:challenge_url] = hackerrank_challenge_base_path + challenge[:slug] unless challenge.key?(:challenge_url)

    # Generate Default Solution Path
    solution_basename = sanitize_string.call(title)
    challenge[:solution] = File.join(hackerrank_solutions_path, solution_basename)

    # Generate Default Explainer Path
    challenge[:explainer] = hackerrank_explainers_path unless challenge.key?(:explainer)

    challenge
  end
  .sort { |a, b| a[:title] <=> b[:title] } # Sort By Challenge Title
  .freeze # Immutable

HACKERRANK_MARKDOWN =
  HACKERRANK_FORMATTED.map do |challenge|
    challenge_to_markdown.call(
      challenge[:title],
      challenge[:solution],
      challenge[:explainer],
      challenge[:challenge_url]
    )
  end

HACKERRANK_TABLE =
  MarkdownTables.make_table(LABELS, HACKERRANK_MARKDOWN, is_rows: true, align: %w[l l l])

CODEWARS_FORMATTED =
  CODEWARS
  .map do |challenge|
    # Ensure `:title` Is Present
    unless challenge.key?(:title)
      pp challenge
      throw 'Challenge Invalid'
    end

    title = challenge[:title]

    # Generate Default Challenge URL
    challenge[:challenge_url] = codewars_challenge_base_path + challenge[:slug] unless challenge.key?(:challenge_url)

    # Generate Default Solution Path
    solution_basename = sanitize_string.call(title)
    challenge[:solution] = File.join(codewars_solutions_path, solution_basename)

    # Generate Default Explainer Path
    challenge[:explainer] = codewars_explainers_path unless challenge.key?(:explainer)

    challenge
  end
  .sort { |a, b| a[:title] <=> b[:title] } # Sort By Challenge Title
  .freeze # Immutable

CODEWARS_MARKDOWN =
  CODEWARS_FORMATTED.map do |challenge|
    challenge_to_markdown.call(
      challenge[:title],
      challenge[:solution],
      challenge[:explainer],
      challenge[:challenge_url]
    )
  end

CODEWARS_TABLE =
  MarkdownTables.make_table(LABELS, CODEWARS_MARKDOWN, is_rows: true, align: %w[l l l])

# Generate Final README.md

readme_template =
  File.read('README_TEMPLATE.md')

readme =
  readme_template
  .gsub('%hackerrank_challenges%', HACKERRANK_TABLE)
  .gsub('%codewars_challenges%', CODEWARS_TABLE)

File.open('README.md', 'w') { |file| file.puts readme }
