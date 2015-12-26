class Notification < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification.project_assigned.subject
  #
 
  def self.send_request(project)
      @project = project
    emails = ["#{@project.students.pluck(:email)}"]

    emails.each do |email|
      new_request(email,project).deliver_now
      # or
      #new_request(email,row).deliver_later

    end
  end

  def new_request(email, project)
    @item = project

    mail(to: email, subject: 'New request')

  end

end
