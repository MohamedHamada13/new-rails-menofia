# Users
u1 = User.create(name: "Mohamed", email: "mohamed@test.com")
u2 = User.create(name: "Ali", email: "ali@test.com")

# Posts
p1 = Post.create(title: "Post 1", content: "Content 1", creator: u1)
p2 = Post.create(title: "Post 2", content: "Content 2", creator: u2)

# Editors
e1 = Editor.create(name: "Editor 1")
e2 = Editor.create(name: "Editor 2")

# Relations
p1.editors << e1
p1.editors << e2
p2.editors << e1