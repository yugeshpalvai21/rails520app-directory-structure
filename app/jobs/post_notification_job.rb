class PostNotificationJob < ApplicationJob
  queue_as :default

  def perform(post)
    # Do something later
    PostMailer.with(post: post).send_notification.deliver_later
  end
end
