class PostMailer < ApplicationMailer
    #mail from: 'no-reply@organization.com'
    def send_notification
        sleep 10
        mail(to: 'subscriber@email.com', subject: 'New Post Created On Organization')
    end
end
