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

  def donation_email(member, current_account)
    @member = member
    @url = 'http://localhost:3000/login'
    subject = "Thank you for your donation #{@member.name}"
    email = Email.new
    email.update_attributes!(member_id: member.id,
                             account_id: current_account.id,
                             subject: subject,
                             subject_type: 'Donation'
                             )
    mail(to: member.email, subject: subject)
  end

  def donation_summary_email(member, current_account)
    current_year = Date.current.year
    prev_year = current_year -1 
    @member = member
    @url = 'http://localhost:3000/login'
    subject = "Year to end donation summary for the year #{prev_year}"
    email = Email.new
    email.update_attributes!(member_id: member.id,
                             account_id: current_account.id,
                             subject: subject,
                             subject_type: 'Donation Summary'
                             )
    mail(to: member.email, subject: subject)

  end
end