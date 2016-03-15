# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160120200218) do

  create_table "course_classes", force: true do |t|
    t.string   "courseClassName"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_classes", ["creator_id"], name: "index_course_classes_on_creator_id", using: :btree
  add_index "course_classes", ["modifier_id"], name: "index_course_classes_on_modifier_id", using: :btree

  create_table "courses", force: true do |t|
    t.string   "CourseName"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "CourseClass_id"
    t.string   "courseCode"
    t.integer  "credit_hours"
    t.float    "total_grade"
    t.integer  "min_number_of_student"
  end

  add_index "courses", ["creator_id"], name: "index_courses_on_creator_id", using: :btree
  add_index "courses", ["modifier_id"], name: "index_courses_on_modifier_id", using: :btree

  create_table "departments", force: true do |t|
    t.string   "name"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "departments", ["creator_id"], name: "index_departments_on_creator_id", using: :btree
  add_index "departments", ["modifier_id"], name: "index_departments_on_modifier_id", using: :btree

  create_table "faculties", force: true do |t|
    t.string   "name"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "faculties", ["creator_id"], name: "index_faculties_on_creator_id", using: :btree
  add_index "faculties", ["modifier_id"], name: "index_faculties_on_modifier_id", using: :btree

  create_table "grade_classes", force: true do |t|
    t.string   "name"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "grade_classes", ["creator_id"], name: "index_grade_classes_on_creator_id", using: :btree
  add_index "grade_classes", ["modifier_id"], name: "index_grade_classes_on_modifier_id", using: :btree

  create_table "privilege_group_roles", force: true do |t|
    t.integer  "privilegeGroup_id"
    t.integer  "role_id"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "privilege_group_roles", ["creator_id"], name: "index_privilege_group_roles_on_creator_id", using: :btree
  add_index "privilege_group_roles", ["modifier_id"], name: "index_privilege_group_roles_on_modifier_id", using: :btree
  add_index "privilege_group_roles", ["privilegeGroup_id"], name: "index_privilege_group_roles_on_privilegeGroup_id", using: :btree
  add_index "privilege_group_roles", ["role_id"], name: "index_privilege_group_roles_on_role_id", using: :btree

  create_table "privilege_groups", force: true do |t|
    t.string   "name"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "privilege_groups", ["creator_id"], name: "index_privilege_groups_on_creator_id", using: :btree
  add_index "privilege_groups", ["modifier_id"], name: "index_privilege_groups_on_modifier_id", using: :btree

  create_table "professor_program_class_courses", force: true do |t|
    t.integer  "professor_id"
    t.integer  "programClassSemesterCourse_id"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "professor_program_class_courses", ["creator_id"], name: "index_professor_program_class_courses_on_creator_id", using: :btree
  add_index "professor_program_class_courses", ["modifier_id"], name: "index_professor_program_class_courses_on_modifier_id", using: :btree
  add_index "professor_program_class_courses", ["professor_id"], name: "index_professor_program_class_courses_on_professor_id", using: :btree

  create_table "professor_titles", force: true do |t|
    t.string   "name"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "professor_titles", ["creator_id"], name: "index_professor_titles_on_creator_id", using: :btree
  add_index "professor_titles", ["modifier_id"], name: "index_professor_titles_on_modifier_id", using: :btree

  create_table "professors", force: true do |t|
    t.integer  "user_id"
    t.integer  "professorTitle_id"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "professors", ["creator_id"], name: "index_professors_on_creator_id", using: :btree
  add_index "professors", ["modifier_id"], name: "index_professors_on_modifier_id", using: :btree
  add_index "professors", ["professorTitle_id"], name: "index_professors_on_professorTitle_id", using: :btree
  add_index "professors", ["user_id"], name: "index_professors_on_user_id", using: :btree

  create_table "program_class_semester_courses", force: true do |t|
    t.string   "specificCourseName"
    t.integer  "minimamNumberOfStudent"
    t.integer  "course_id"
    t.integer  "semester_id"
    t.integer  "CourseClass_id"
    t.integer  "ProgramClass_id"
    t.integer  "year"
    t.boolean  "directedReading"
    t.string   "courseCode"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "credit_hours"
    t.float    "total_grade"
    t.integer  "min_number_of_student"
  end

  add_index "program_class_semester_courses", ["CourseClass_id"], name: "index_program_class_semester_courses_on_CourseClass_id", using: :btree
  add_index "program_class_semester_courses", ["ProgramClass_id"], name: "index_program_class_semester_courses_on_ProgramClass_id", using: :btree
  add_index "program_class_semester_courses", ["course_id"], name: "index_program_class_semester_courses_on_course_id", using: :btree
  add_index "program_class_semester_courses", ["creator_id"], name: "index_program_class_semester_courses_on_creator_id", using: :btree
  add_index "program_class_semester_courses", ["modifier_id"], name: "index_program_class_semester_courses_on_modifier_id", using: :btree
  add_index "program_class_semester_courses", ["semester_id"], name: "index_program_class_semester_courses_on_semester_id", using: :btree

  create_table "program_class_statuses", force: true do |t|
    t.integer  "programClass_id"
    t.integer  "preProgramClass_id"
    t.string   "status"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "program_class_statuses", ["creator_id"], name: "index_program_class_statuses_on_creator_id", using: :btree
  add_index "program_class_statuses", ["modifier_id"], name: "index_program_class_statuses_on_modifier_id", using: :btree
  add_index "program_class_statuses", ["preProgramClass_id"], name: "index_program_class_statuses_on_preProgramClass_id", using: :btree
  add_index "program_class_statuses", ["programClass_id"], name: "index_program_class_statuses_on_programClass_id", using: :btree

  create_table "program_classes", force: true do |t|
    t.string   "name"
    t.integer  "duration"
    t.integer  "extensionPeriod"
    t.integer  "numberOfCourses"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "program_classes", ["creator_id"], name: "index_program_classes_on_creator_id", using: :btree
  add_index "program_classes", ["modifier_id"], name: "index_program_classes_on_modifier_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["creator_id"], name: "index_roles_on_creator_id", using: :btree
  add_index "roles", ["modifier_id"], name: "index_roles_on_modifier_id", using: :btree

  create_table "sci_degree_classes", force: true do |t|
    t.string   "name"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sci_degree_classes", ["creator_id"], name: "index_sci_degree_classes_on_creator_id", using: :btree
  add_index "sci_degree_classes", ["modifier_id"], name: "index_sci_degree_classes_on_modifier_id", using: :btree

  create_table "semesters", force: true do |t|
    t.string   "semesterName"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "semesters", ["creator_id"], name: "index_semesters_on_creator_id", using: :btree
  add_index "semesters", ["modifier_id"], name: "index_semesters_on_modifier_id", using: :btree

  create_table "student_program_courses", force: true do |t|
    t.integer  "programClassSemesterCourse_id"
    t.integer  "studentProgram_id"
    t.integer  "gradeClass_id"
    t.date     "subscriptionDate"
    t.float    "gradeValue"
    t.boolean  "isComplementaryCourse"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "student_program_courses", ["creator_id"], name: "index_student_program_courses_on_creator_id", using: :btree
  add_index "student_program_courses", ["gradeClass_id"], name: "index_student_program_courses_on_gradeClass_id", using: :btree
  add_index "student_program_courses", ["modifier_id"], name: "index_student_program_courses_on_modifier_id", using: :btree
  add_index "student_program_courses", ["programClassSemesterCourse_id"], name: "index_student_program_courses_on_programClassSemesterCourse_id", using: :btree
  add_index "student_program_courses", ["studentProgram_id"], name: "index_student_program_courses_on_studentProgram_id", using: :btree

  create_table "student_program_giving_grades", force: true do |t|
    t.integer  "studentProgram_id"
    t.date     "seminarDate"
    t.boolean  "hasThesisTitle"
    t.boolean  "finalReportOnGoodnessOfThesis"
    t.boolean  "refereeMakingSuggestion"
    t.boolean  "refreeComitteeMade"
    t.string   "thesisTitleArabic"
    t.string   "thiesisTitleEnglish"
    t.string   "thesisGeneralField"
    t.string   "thesisSpecificField"
    t.boolean  "thesisAbstract"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "student_program_giving_grades", ["creator_id"], name: "index_student_program_giving_grades_on_creator_id", using: :btree
  add_index "student_program_giving_grades", ["modifier_id"], name: "index_student_program_giving_grades_on_modifier_id", using: :btree
  add_index "student_program_giving_grades", ["studentProgram_id"], name: "index_student_program_giving_grades_on_studentProgram_id", using: :btree

  create_table "student_program_professors", force: true do |t|
    t.integer  "studentProgram_id"
    t.integer  "professor_id"
    t.boolean  "isPrimary"
    t.boolean  "isDefenseCommitee"
    t.text     "comment"
    t.date     "additionDate"
    t.boolean  "isAccepted"
    t.date     "acceptanceDate"
    t.boolean  "isExternal"
    t.boolean  "hasReceivedIndivdualReport"
    t.boolean  "hasReceivedCollectiveReport"
    t.boolean  "hasReceivedSatisfactionReport"
    t.boolean  "isCommitteeHead"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "student_program_professors", ["creator_id"], name: "index_student_program_professors_on_creator_id", using: :btree
  add_index "student_program_professors", ["modifier_id"], name: "index_student_program_professors_on_modifier_id", using: :btree
  add_index "student_program_professors", ["professor_id"], name: "index_student_program_professors_on_professor_id", using: :btree
  add_index "student_program_professors", ["studentProgram_id"], name: "index_student_program_professors_on_studentProgram_id", using: :btree

  create_table "student_program_status_histories", force: true do |t|
    t.integer  "studentProgram_id"
    t.integer  "programClassStatus_id"
    t.date     "date"
    t.text     "comments"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "student_program_status_histories", ["creator_id"], name: "index_student_program_status_histories_on_creator_id", using: :btree
  add_index "student_program_status_histories", ["modifier_id"], name: "index_student_program_status_histories_on_modifier_id", using: :btree
  add_index "student_program_status_histories", ["programClassStatus_id"], name: "index_student_program_status_histories_on_programClassStatus_id", using: :btree
  add_index "student_program_status_histories", ["studentProgram_id"], name: "index_student_program_status_histories_on_studentProgram_id", using: :btree

  create_table "student_program_warning_histories", force: true do |t|
    t.integer  "studentProgram_id"
    t.text     "warning"
    t.date     "date"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "student_program_warning_histories", ["creator_id"], name: "index_student_program_warning_histories_on_creator_id", using: :btree
  add_index "student_program_warning_histories", ["modifier_id"], name: "index_student_program_warning_histories_on_modifier_id", using: :btree
  add_index "student_program_warning_histories", ["studentProgram_id"], name: "index_student_program_warning_histories_on_studentProgram_id", using: :btree

  create_table "student_programs", force: true do |t|
    t.integer  "student_id"
    t.integer  "ProgramClass_id"
    t.boolean  "finishedToefl"
    t.date     "toeflDate"
    t.boolean  "hasResearchPoint"
    t.boolean  "puplishedAPaper"
    t.date     "programStartDate"
    t.boolean  "isVTMENAprogram"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "semester_id"
  end

  add_index "student_programs", ["ProgramClass_id"], name: "index_student_programs_on_ProgramClass_id", using: :btree
  add_index "student_programs", ["creator_id"], name: "index_student_programs_on_creator_id", using: :btree
  add_index "student_programs", ["modifier_id"], name: "index_student_programs_on_modifier_id", using: :btree
  add_index "student_programs", ["semester_id"], name: "index_student_programs_on_semester_id", using: :btree
  add_index "student_programs", ["student_id"], name: "index_student_programs_on_student_id", using: :btree

  create_table "student_sci_degree_grades", force: true do |t|
    t.integer  "studentSciDegree_id"
    t.integer  "year"
    t.float    "grade"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "student_sci_degree_grades", ["creator_id"], name: "index_student_sci_degree_grades_on_creator_id", using: :btree
  add_index "student_sci_degree_grades", ["modifier_id"], name: "index_student_sci_degree_grades_on_modifier_id", using: :btree
  add_index "student_sci_degree_grades", ["studentSciDegree_id"], name: "index_student_sci_degree_grades_on_studentSciDegree_id", using: :btree

  create_table "student_sci_degrees", force: true do |t|
    t.integer  "SciDegreeClass_id"
    t.integer  "student_id"
    t.integer  "university_id"
    t.integer  "faculty_id"
    t.integer  "department_id"
    t.integer  "graduationYear"
    t.string   "fieldOfResearch"
    t.float    "gpa"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "student_sci_degrees", ["SciDegreeClass_id"], name: "index_student_sci_degrees_on_SciDegreeClass_id", using: :btree
  add_index "student_sci_degrees", ["creator_id"], name: "index_student_sci_degrees_on_creator_id", using: :btree
  add_index "student_sci_degrees", ["department_id"], name: "index_student_sci_degrees_on_department_id", using: :btree
  add_index "student_sci_degrees", ["faculty_id"], name: "index_student_sci_degrees_on_faculty_id", using: :btree
  add_index "student_sci_degrees", ["modifier_id"], name: "index_student_sci_degrees_on_modifier_id", using: :btree
  add_index "student_sci_degrees", ["student_id"], name: "index_student_sci_degrees_on_student_id", using: :btree
  add_index "student_sci_degrees", ["university_id"], name: "index_student_sci_degrees_on_university_id", using: :btree

  create_table "students", force: true do |t|
    t.integer  "user_id"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["creator_id"], name: "index_students_on_creator_id", using: :btree
  add_index "students", ["modifier_id"], name: "index_students_on_modifier_id", using: :btree
  add_index "students", ["user_id"], name: "index_students_on_user_id", using: :btree

  create_table "universities", force: true do |t|
    t.string   "name"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "universities", ["creator_id"], name: "index_universities_on_creator_id", using: :btree
  add_index "universities", ["modifier_id"], name: "index_universities_on_modifier_id", using: :btree

  create_table "user_privilege_group_roles", force: true do |t|
    t.integer  "user_id"
    t.integer  "privilegeGroupRole_id"
    t.integer  "role_id"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_privilege_group_roles", ["creator_id"], name: "index_user_privilege_group_roles_on_creator_id", using: :btree
  add_index "user_privilege_group_roles", ["modifier_id"], name: "index_user_privilege_group_roles_on_modifier_id", using: :btree
  add_index "user_privilege_group_roles", ["privilegeGroupRole_id"], name: "index_user_privilege_group_roles_on_privilegeGroupRole_id", using: :btree
  add_index "user_privilege_group_roles", ["role_id"], name: "index_user_privilege_group_roles_on_role_id", using: :btree
  add_index "user_privilege_group_roles", ["user_id"], name: "index_user_privilege_group_roles_on_user_id", using: :btree

  create_table "user_types", force: true do |t|
    t.string   "name"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_types", ["creator_id"], name: "index_user_types_on_creator_id", using: :btree
  add_index "user_types", ["modifier_id"], name: "index_user_types_on_modifier_id", using: :btree

  create_table "users", force: true do |t|
    t.integer  "userType_id"
    t.string   "nationalID"
    t.string   "name"
    t.string   "imageURL"
    t.string   "mobileNumber"
    t.string   "phoneNumber"
    t.string   "password"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["creator_id"], name: "index_users_on_creator_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["modifier_id"], name: "index_users_on_modifier_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["userType_id"], name: "index_users_on_userType_id", using: :btree

end
