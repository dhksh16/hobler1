require 'uri'
require 'open-uri'


class HomeController < ApplicationController
  def index
  end
  def recommend


      if !params[:search]
        @search = "%EA%B0%80%EB%B0%A9"
      else
        @search = params[:search].to_s
        @search = URI.encode(@search)
      end
      doc = Nokogiri::HTML(open("http://shopping.naver.com/search/all_search.nhn?query="+@search+"&pagingIndex=1&pagingSize=40&productSet=total&viewType=list&sort=rel&frm=NVSHPAG&sps=N", "User-Agent" =>'ruby'))

      @arr = Array.new
      doc.css("._productLazyImg").each do |x|
          @arr << x
      end

      @name = Array.new
      doc.css(".info > a").each do |x|
          @name << x.inner_text
      end

  end
  def search
  end

end
