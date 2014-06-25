class NewsletterMailer < MandrillMailer::TemplateMailer
  default from: 'info@magmaconf.com', from_name: 'Magma Blog'

  def add_subscription(params)
    mandrill_mail template: 'newsletter',
                  subject: 'Newsletter',
                  to: [
                        { email: ENV['JP_EMAIL'] },
                        { email: ENV['ANA_EMAIL'] }
                  ],
                  vars: {
                      'USER_EMAIL' => params[:email],
                      'USER_NAME' => params[:name]
                  },
                  important: true,
                  inline_css: true,
                  async: true
  end
end
