require 'news-api'
class Newsapi < ApplicationController
  def index
      newsapi = News.new("51ed43aaa6734af7a6eab1b5375cd023")            
      @top_headlines = newsapi.get_top_headlines(q: '',
                                          sources: 'bbc-news,the-verge',
                                          category: 'general',
                                          language: 'en',
                                          country: 'au')
                                          
       @all_articles = newsapi.get_everything(q: 'bitcoin',
                                      sources: 'bbc-news,the-verge',
                                      domains: 'bbc.co.uk,techcrunch.com',
                                      from: '2017-12-01',
                                      to: '2017-12-12',
                                      language: 'en',
                                      sortBy: 'relevancy',
                                      page: 2))  
       @sources = newsapi.get_sources(country: 'us', language: 'en')
                                          
  end
end
      
      
      
      
      
      
      
      
      
      
      
      
      


