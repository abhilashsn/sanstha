class Notification < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification.project_assigned.subject
  #
  def project_assigned(project)
   @project = project
   student_email= project.student.email
   mail to: "#{student_email}", subject: "project assigned - {#{student.project.name}}"
  end

end
