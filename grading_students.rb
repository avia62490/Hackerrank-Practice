def gradingStudents(grades)
  updated_grades = []
  grades.each do |grade|
    if grade <= 37
      updated_grades << grade
    elsif grade % 5 == 0
      updated_grades << grade
    elsif (grade + 1) % 5 == 0
      updated_grades << (grade + 1)
    elsif (grade + 2) % 5 == 0
      updated_grades << (grade + 2)
    else
      updated_grades << grade
    end
  end
  return updated_grades
end