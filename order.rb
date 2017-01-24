class Order

  attr_reader :items, :placed_at, :time_spend_on_sending_email # getter

  include ItemContainer

  def initialize
    @items = []
    # ...
  end

  def place
    @placed_at = Time.now
    thr = Thread.new do
      Pony.mail({
        :to => StoreApplication::Admin.email,
        :from => "My Store <jason.binwood@gmail.com>",
        :via => :smtp,
        :via_options => {
          :address              => 'smtp.gmail.com',
          :port                 => '587',
          :enable_starttls_auto => true,
          :user_name            => 'jason.binwood@gmail.com',
          :password             => '6bh5snql83d',
          :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
          :domain               => "mail.google.com" # the HELO domain provided by the client to the server
        },
        subject: "New my order has been placed",
        body: "Place check back you admin page to see it!"
      })
    end

    while(thr.alive?)
      puts "."
      sleep 1
    end

    sent_email_at = Time.now
    @time_spend_on_sending_email = sent_email_at - @placed_at
  end

end
