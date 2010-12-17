class Auth < Erector::Widget
  def content
    html do
      head do
        link :type => 'text/css', :rel => 'stylesheet', :href => '/web.css'
      end
      body do
        form :class => 'login', :method => 'POST' do
          div :class => 'field' do
            label 'Username', :for => 'username'
            input :type => 'text', :id => 'username', :name => 'username'
          end

          div :class => 'field' do
            label 'Password', :for => 'password'
            input :type => 'password', :id => 'password', :name => 'password'
          end

          input :type => 'submit', :value => 'Login'
        end
      end
    end      
  end
end