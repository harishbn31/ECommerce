# Preview all emails at http://localhost:3000/rails/mailers/notification
class NotificationPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notification/order_confirmation
  def order_confirmation
    Notification.order_confirmation
  end

end
