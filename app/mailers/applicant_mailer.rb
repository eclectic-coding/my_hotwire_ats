class ApplicantMailer < ApplicationMailer
  def contact(email:)
    @email = email
    @applicant = @email.applicant
    @user = @email.user

    mail(
      to: @applicant.email,
      from: "reply-#{@user.email_alias}@eclecticcoding.com",
      subject: @email.subject
    )
  end
end