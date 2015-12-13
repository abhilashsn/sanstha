desc "this task file is for seting up roles and users for the app"
task :setup_admin => :environment do
	Role.delete_all 
	Role.create(name: "super_admin")
	Role.create(name: "admin")
	Role.create(name: "customer")

	User.create(email:"admin1@gmail.com",password:"secret123")
	User.create(email:"admin2@gmail.com",password:"secret123")

	Permission.create(user_id: User.find_by_email("admin1@gmail.com").id,role_id:Role.find_by_name("super_admin").id)
	Permission.create(user_id: User.find_by_email("admin2@gmail.com").id,role_id:Role.find_by_name("admin").id)

			for user in User.all
				if (user.roles.empty?)
					Permission.create(user_id: user.id,role_id: Role.find_by_name("customer").id)
					
				end
end
end