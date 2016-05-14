class MemberMailer < ApplicationMailer

  default from: 'lmrshall@email.com'

  def welcome_email(member)
    @account = member.account
    @url = 'http://localhost:3000/login'
    subject = "Welcome to #{member.organization.name}"
    email = Email.new
    email.subject = subject
    email.update_attribues.update(member_id: member.id,
                                  account_id: account.id,
                                  subject: subject,
                                  subject_type: 'Welcome'
    )
    mail(to: member.emails, subject: subject)
  end

end