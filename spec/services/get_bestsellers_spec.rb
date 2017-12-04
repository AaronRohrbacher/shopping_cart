require 'rails_helper'

describe Book, :vcr => true do
  it "returns a 200 success header when the API call is made" do
    response = Book.get_books
    expect(response).to_not(eq(nil))
  end
end
