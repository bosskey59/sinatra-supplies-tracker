to ask:



<% flash.keys.each do |type| %>
<div data-alert class="flash <%= type %> alert-box radius">
  <%= flash[type] %>
  <a href="#" class="close">&times;</a>
</div>
<% end %>


    def logged_in?
      !!current_user
    end

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end




    <a href="/projects/<%= @project.id %>">Delete Project</a></th>
    <th><a href="/users/dashboard/<%= @project.id %>">Dashboard</a></th>

    # get '/supplies/assign/project/:id' do
    #   binding.pry
    #   @user = Helpers.current_user(session)
    #   Helpers.must_login(session)
    #   @project = Project.find_by(id: params[:id])
    #   erb :'/supplies/assign'
    # end

    navbar doesn't know what project is on edit show page:

<<<<<<< HEAD
    <table id="navbar">
      <tr>
        <th><a href="/projects/<%= @project.id %>">Edit Project Info</a></th>
        <th><a href="/supplies/assign/<%= @project.id %>">Update Supplies</a></th>
        <th><form action="/projects/<%= @project.id %>" method="post">
          <input id="hidden" type="hidden" name="_method" value="patch">
        </form><a href="/projects/<%= @project.id %>">Delete Project</a></th>
        <th><a href="/users/dashboard/<%= @project.id %>">Dashboard</a></th>
        <th><a href="href="/users/logout">Log Out</a></th>
      </tr>
      </table>

    <br>
    <br>
    <br>


    <% if @all %>
      <% if @all.size == 1 %>
    <% binding.pry %>
        <a href="<a href="/supplies/<%= supply.ids %>">
        <%= supply.name.capitalize %></a>
        <% binding.pry %>
    <% binding.pry %>
      <% elsif @all.size > 1 %>
        <% @all.each do |supply| %>
        <ul>
          <li><a href="/supplies/<%= supply.ids %>"><%= supply.name.capitalize %></a></li>
        </ul>
        <% end %>
      <% end %>
    <% end %>


    # get '/supplies' do
    #   @user = Helpers.current_user(session)
    #   Helpers.must_login(session)
    #
    #   @supplies = Supply.all.map {|supply| supply.delete if supply.name = ""}
    #   @my_supplies = []
    #   if @user.projects.size > 1
    #     @user.projects.each do |project|
    #       @my_supplies << project.supplies if project.supplies
    #       @my_supplies = @my_supplies.flatten
    #       binding.pry
    #     end
    #   elsif user.projects.size == 1
    #     @my_supplies << @user.projects.first.supplies if @user.projects.first.supplies
    #   end
    #   erb :'/supplies/index'
    # end
=======
>>>>>>> a0cba4b26d2e7e11a6a6ce7461c32abedce75415



    post '/supplies' do
      @user = Helpers.current_user(session)
      Helpers.must_login(session)

      @found = Supply.find_by(name: params[:name].downcase)
      binding.pry
      if @found
        #flash message - this supply already exits, redirecting you to its page
        redirect to "/supplies/#{@found.id}"
      else
        params.delete("_method")
        params[:name].downcase
        @supply = Supply.create(params)
      end

      if @supply.save
        #flash[:message] = "Successfully created supply."
        erb :'/supplies/show'
      else
        #flash[:message] = "Please make sure your supply has a name."
        redirect to '/supplies/new'
      end
    end
