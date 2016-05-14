class MemberMailer < ApplicationMailer

  default from: 'vtracker_test@email.com'

  def welcome_email(member, current_account)
    @member = member
    @url = 'http://localhost:3000/login'
    subject = "Welcome to #{member.organization.name}"
    email = Email.new
    email.update_attributes!(member_id: member.id,
                            account_id: current_account.id,
                            subject: subject,
                            subject_type: 'Welcome'
    )
    mail(to: member.email, subject: subject)
  end

  def custom_email(member, current_account, opts = {})
    @member = member
    subject = opts[:subject]
    body = opts[:body]
    mail(to: member.email, subject: subject, body: body)
  end
end