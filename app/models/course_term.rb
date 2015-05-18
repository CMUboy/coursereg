class CourseTerm < ActiveRecord::Base
  enum season: {winter: 0, spring: 1, summer: 2, fall: 3}
end
