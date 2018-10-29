class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to: "kawa.capri.0101@gmail.com", subject: "フィードバックの確認メール"
  end

  # def inform_mail(blog)
  #   @blog = blog
  #   mail to: @blog.user.email, subject: "投稿完了メール"
  # end
end
