json.array!(@course_terms) do |course_term|
  json.extract! course_term, :id
  json.url course_term_url(course_term, format: :json)
end
