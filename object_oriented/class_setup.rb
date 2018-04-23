class ApiConnector
  attr_accessor :title, :description, :url

  def initialize(title: title, description: description, url: url = 'https://google.com')
    @title = title
    @description = description
    @url = url
    secret_method
  end

  def api_logger
    puts 'API Connector starting...'
  end

  private # Only accessible to ApiConnector class, other inherited classes cannot access beyond private.

  def secret_method
    puts 'This is a secret method from the parent class.'
  end
end

class SmsConnector < ApiConnector
  def send_sms
    `curl -X POST -d “notification[title]=#{@title}” -d “notification[url]=http://edutechional-resty.herokuapp.com/posts/1” #{@url}`
  end
end

class PhoneConnector < ApiConnector
  def send_phone_call
    puts "sending phonecall..."
  end

  def api_logger
    super # You will call the parent class method first and then will call this method. You are extending a method.
    puts 'Phone call API connection starting...'
  end
end

class MailConnector < ApiConnector
  def send_email
    puts "sending mail..."
  end
end

# sms = SmsConnector.new(title: 'Test', description: 'Test Description', url: 'http://edutechional-smsy.herokuapp.com/notifications')
phone = PhoneConnector.new(title: 'Test', description: 'Test Description', url: 'www.donkey.com')
# mail = MailConnector.new(title: 'Test', description: 'Test Description', url: 'www.donkey.com')

# sms.send_sms
# mail.send_email
# phone.send_phone_call
phone.api_logger
