require "net/smtp"
require "erb"
require "haml"
require "ostruct"

class Application
  EMAIL_TEMPLATE = "email_template.txt.erb"

  BODY_TEMPLATE = "body_template.html.haml"

  def send_mail
    body_context = OpenStruct.new({
      simrun_id: "simrun-1"
    })

    email_context = OpenStruct.new({
      mail_from: "aputla@amazon.com",
      mail_to: "aputla@amazon.com",
      subject: "hello",
      body: prepare_body(body_context),
    })
    content = prepare_email_content(email_context)
    Net::SMTP.start("localhost") do |smtp|
      smtp.send_message(content, email_context.mail_from, email_context.mail_to)
    end
  end

  def prepare_email_content(email_context)
    return ERB.new(IO.read(EMAIL_TEMPLATE)).result(email_context.instance_eval { binding })
  end

  def prepare_body(body_context)
    return Haml::Engine.new(IO.read(BODY_TEMPLATE)).render(self, :context => body_context)
  end
end

Application.new.send_mail
