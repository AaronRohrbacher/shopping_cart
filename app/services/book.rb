class Book
  def initialize

  end
  def self.get_books
    # response = RestClient::Request.execute(
    #   method: :get,
    #   url: 'https://api.nytimes.com/svc/books/v3/lists/combined-print-and-e-book-fiction.json',
    #   headers: {api_key: '09490157bb434c95afea356477de8a8b'}
    #   )
    response = RestClient.get('https://api.nytimes.com/svc/books/v3/lists/combined-print-and-e-book-fiction.json', headers= {api_key: ENV['NYT_API_KEY']})
    response = JSON.parse(response)
    response['results']['books']
  end

end
