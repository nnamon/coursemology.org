# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Role.count == 0
  super_role = Role.create! name: "superuser", title: "Super User"
  Role.create! name: "normal", title: "User"
  Role.create! name: "lecturer", title: "Lecturer"
  Role.create! name: "ta", title: "Teaching Assistant"
  Role.create! name: "student", title: "Student"
end

if Role.count == 5
  Role.create! name: "shared", title: "Previewer"
end

if User.count == 0
  admin = User.create!(name: "Admin", email: "jfdi@academy.com",
                       password: "supersecretpass",
                       password_confirmation: "supersecretpass",
                       system_role_id: super_role.id)
end

if Action.count == 0
  Action.create! text: "attempted", description: "actor attempted obj (assignment)"
  Action.create! text: "commented on", description: "actor commented on object"
  Action.create! text: "created", description: "actor created object (achievement, level)"
  Action.create! text: "earned", description: "actor earned object (achievement, title, level)"
  Action.create! text: "published", description: "actor published object"
  Action.create! text: "replied to", description: "actor replied object"
  Action.create! text: "started", description: "actor started obj (assignment, training)"
end

if ThemeAttribute.count == 0
  ThemeAttribute.create! name: "Background Color",
                         description: "Background color of the page",
                         value_type: "color"
  ThemeAttribute.create! name: "Background Image",
                         description: "Background image. It will be added to the bottom of the page",
                         value_type: "image"
  ThemeAttribute.create! name: "Sidebar Link Color",
                         description: "Color of the navigation links",
                         value_type: "color"
  ThemeAttribute.create! name: "Announcements Icon",
                         description: "Icon for the Announcements navigation link on the sidebar",
                         value_type: "image"
  ThemeAttribute.create! name: "Missions Icon",
                         description: "Icon for the Mission navigation link on the sidebar",
                         value_type: "image"
  ThemeAttribute.create! name: "Trainings Icon",
                         description: "Icon for the Trainings navigation link on the sidebar",
                         value_type: "image"
  ThemeAttribute.create! name: "Submissions Icon",
                         description: "Icon for the Submissions navigation link on the sidebar",
                         value_type: "image"
  ThemeAttribute.create! name: "Leaderboards Icon",
                         description: "Icon for the Leaderboard navigation link on the sidebar",
                         value_type: "image"
end

if ThemeAttribute.count == 8
  ThemeAttribute.create! name: "Custom CSS",
                         description: "Custom style sheet rules",
                         value_type: "text"
end

if PreferableItem.count == 0

  #Missions
  PreferableItem.create! item:          "Mission",
                         item_type:     "Column",
                         name:          "title",
                         default_value: "Mission",
                         description:   "Mission title",
                         default_display: true

  PreferableItem.create! item:          "Mission",
                         item_type:     "Column",
                         name:          "tag",
                         default_value: "Tag",
                         description:   "Mission tags" ,
                         default_display: true

  PreferableItem.create! item:          "Mission",
                         item_type:     "Column",
                         name:          "exp",
                         default_value: "Max Exp",
                         description:   "Mission exp gainable",
                         default_display: true

  PreferableItem.create! item:          "Mission",
                         item_type:     "Column",
                         name:          "award",
                         default_value: "Requirement for",
                         description:   "Requirement for achievement",
                         default_display: true

  PreferableItem.create! item:          "Mission",
                         item_type:     "Column",
                         name:          "start",
                         default_value: "Start Time",
                         description:   "Mission start time",
                         default_display: true

  PreferableItem.create! item:          "Mission",
                         item_type:     "Column",
                         name:          "end",
                         default_value: "End Time",
                         description:   "Mission end time",
                         default_display: true

  #Training
  PreferableItem.create! item:          "Training",
                         item_type:     "Column",
                         name:          "title",
                         default_value: "Training",
                         description:   "Training title",
                         default_display: true

  PreferableItem.create! item:          "Training",
                         item_type:     "Column",
                         name:          "tag",
                         default_value: "Tag",
                         description:   "Training tags",
                         default_display: true

  PreferableItem.create! item:          "Training",
                         item_type:     "Column",
                         name:          "exp",
                         default_value: "Max Exp",
                         description:   "Training exp gainable",
                         default_display: true

  PreferableItem.create! item:          "Training",
                         item_type:     "Column",
                         name:          "award",
                         default_value: "Requirement for",
                         description:   "Requirement for achievement",
                         default_display: true

  PreferableItem.create! item:          "Training",
                         item_type:     "Column",
                         name:          "start",
                         default_value: "Start Time",
                         description:   "Training start time",
                         default_display: true

  PreferableItem.create! item:          "Training",
                         item_type:     "Column",
                         name:          "end",
                         default_value: "End Time",
                         description:   "Training end time",
                         default_display: false

  #SideBar  - students
  PreferableItem.create! item:          "Sidebar",
                         item_type:     "Student",
                         name:          "announcements",
                         default_value: "Announcements",
                         description:   "Course announcements",
                         default_display: true

  PreferableItem.create! item:          "Sidebar",
                         item_type:     "Student",
                         name:          "missions",
                         default_value: "Missions",
                         description:   "Course missions",
                         default_display: true

  PreferableItem.create! item:          "Sidebar",
                         item_type:     "Student",
                         name:          "trainings",
                         default_value: "Trainings",
                         description:   "Course trainings",
                         default_display: true

  PreferableItem.create! item:          "Sidebar",
                         item_type:     "Student",
                         name:          "submissions",
                         default_value: "Submissions",
                         description:   "All submissions",
                         default_display: true

  PreferableItem.create! item:          "Sidebar",
                         item_type:     "Student",
                         name:          "achievements",
                         default_value: "Achievements",
                         description:   "Show all achievements",
                         default_display: true

  PreferableItem.create! item:          "Sidebar",
                         item_type:     "Student",
                         name:          "leaderboard",
                         default_value: "Leaderboard",
                         description:   "Show leaderboard",
                         default_display: true

  PreferableItem.create! item:          "Sidebar",
                         item_type:     "Student",
                         name:          "students",
                         default_value: "Students",
                         description:   "Show all students",
                         default_display: true
end

if PreferableItem.count == 19

  PreferableItem.create! item:          "Training",
                         item_type:     "Time",
                         name:          "time_format",
                         default_value: "%d-%m-%Y",
                         description:   "Training time display format",
                         default_display: true

  PreferableItem.create! item:          "Mission",
                         item_type:     "Time",
                         name:          "time_format",
                         default_value: "%d-%m-%Y",
                         description:   "Mission time display format",
                         default_display: true

end
