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

ActiveRecord::Schema.define(version: 2019_11_19_024257) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classroom_enrollments", force: :cascade do |t|
    t.bigint "classroom_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classroom_id"], name: "index_classroom_enrollments_on_classroom_id"
    t.index ["student_id"], name: "index_classroom_enrollments_on_student_id"
  end

  create_table "classrooms", force: :cascade do |t|
    t.bigint "teacher_id"
    t.bigint "grade_id"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_classrooms_on_grade_id"
    t.index ["teacher_id"], name: "index_classrooms_on_teacher_id"
  end

  create_table "do_not_places", force: :cascade do |t|
    t.bigint "student_one_id"
    t.bigint "student_two_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_one_id"], name: "index_do_not_places_on_student_one_id"
    t.index ["student_two_id"], name: "index_do_not_places_on_student_two_id"
  end

  create_table "grades", force: :cascade do |t|
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer "schoolID"
    t.string "first_name"
    t.string "last_name"
    t.string "birthday"
    t.string "gender"
    t.string "photo"
    t.boolean "esl"
    t.boolean "gifted_talented"
    t.boolean "special_education"
    t.boolean "medical_alert"
    t.string "next_teacher_lock"
    t.text "notes"
    t.bigint "grade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_students_on_grade_id"
  end

  create_table "teacher_locks", force: :cascade do |t|
    t.bigint "teacher_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_teacher_locks_on_student_id"
    t.index ["teacher_id"], name: "index_teacher_locks_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "schoolID"
    t.string "first_name"
    t.string "last_name"
    t.bigint "grade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_teachers_on_email", unique: true
    t.index ["grade_id"], name: "index_teachers_on_grade_id"
    t.index ["reset_password_token"], name: "index_teachers_on_reset_password_token", unique: true
  end

  add_foreign_key "classroom_enrollments", "classrooms"
  add_foreign_key "classroom_enrollments", "students"
  add_foreign_key "classrooms", "grades"
  add_foreign_key "classrooms", "teachers"
  add_foreign_key "do_not_places", "students", column: "student_one_id"
  add_foreign_key "do_not_places", "students", column: "student_two_id"
  add_foreign_key "students", "grades"
  add_foreign_key "teacher_locks", "students"
  add_foreign_key "teacher_locks", "teachers"
  add_foreign_key "teachers", "grades"
end
