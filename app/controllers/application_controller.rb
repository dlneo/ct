class ApplicationController < ActionController::Base
  protect_from_forgery
  def initialize
    super
    @tags = %w(a acronym b strong i em li ul ol h1 h2 h3 h4 h5 h6 blockquote cite sub sup ins p table tr td tbody colgroup col img)
    @atr= %w(href title alt src style class width height )
    @barcats =  Cat.where(:status_id => '1')
    @barposts = Post.where(:status_id => '1')
  end
end
