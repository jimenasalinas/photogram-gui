class UsersController < ApplicationController
  def index
    matching_users = User.all

    @list_of_users = matching_users.order({:username => :asc})
    render({ :template => "user_templates/index" })
  end

  def show
  url_username = params.fetch("path_username")

  matching_usernames = User.where({:username => url_username})

  @the_user = matching_usernames.first

  # if the_user == nil
  #   redirect_to("/404")
  # else
  render({:template => "user_templates/show"})
  # end
  end

  def update

    the_id = params.fetch("modify_username")
    matching_users = User.where({:username => the_id })
    
    the_user = matching_users.at(0)

    input_user = params.fetch("query_user")

    the_user.username = input_user

    the_user.save

    redirect_to("/users/"+ the_user.username)
  end

  def create

    input_user = params.fetch("query_new_user")

    a_new_user = User.new
    a_new_user.username = input_user
 

    a_new_user.save

    redirect_to("/users/"+ a_new_user.username)
    # render({:template => "photo_templates/create"})
  end

end
