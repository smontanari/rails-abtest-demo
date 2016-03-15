class AbtestController < ApplicationController
  use_vanity

  def do_it
    if params[:user_choice] == 'done_it'
      Vanity.track!(:done_it)
      flash[:notice] = "We appreciate that you liked the color!."
    else
      flash[:notice] = "We're sorry the color didn't do it for you."
    end
    redirect_to abtest_thank_you_path
  end

  def reset_test
    cookies.delete :vanity_id
    redirect_to root_path
  end
end
