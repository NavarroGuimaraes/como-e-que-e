class HomeController < ActionController::Base
    def nav_bar
        link_to 'how_it_works',
        :onclick => 'how_it_works.html'

        link_to 'tutorials',
        :onclick => 'tutorials.html'

        link_to 'contact',
        onclick => 'contact.html'

        link_to 'login',
        :onclick => 'login.html'

        link_to 'register',
        onclick => 'register.html'
    end
end