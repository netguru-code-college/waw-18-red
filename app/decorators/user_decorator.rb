class UserDecorator < Draper::Decorator
  delegate_all

  WELCOME_PREFIX = I18n.t('decorators.user.hello_prefix')

  def username
    return "#{WELCOME_PREFIX} #{email}" if first_name.blank? && last_name.blank?

    "#{WELCOME_PREFIX} #{first_name} #{last_name}"
  end
end
