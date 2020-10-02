class PagesController < ApplicationController
  def home
  end

  def set_cookies
    cookies[:client_name] = 'yugesh'
    cookies[:client_location] = 'IND'
    cookies.permanent.signed[:client_passcode] = '123456'

    redirect_to pages_get_cookies_path
  end

  def get_cookies
    @client_name = cookies[:client_name]
    @client_location = cookies[:client_location]
    @client_passcode = cookies.permanent.signed[:client_passcode]
  end

  def clean_cookies
    cookies.delete(:client_name)
    cookies.delete(:client_location)
    cookies.delete(:client_passcode)

    redirect_to pages_get_cookies_path
  end
end
