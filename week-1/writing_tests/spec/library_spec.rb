require 'library'

describe Library do
  before(:each) do
    @library = Library.new
  end
    
  it 'can find a specific book' do
    book = @library.find_book('Eloquent JavaScript')
    expect(book[:title]).to eq('Eloquent JavaScript')
    expect(book[:author]).to eq('Marijn Haverbeke')
    expect(book[:subject]).to eq('JS')
  end

  it 'can add a new book' do
    new_book = {title: 'Ruby on Rails', author: 'unknown', subject: 'Rails'}
    @library.add_book(new_book)
    expect(@library.books).to include(new_book)
  end

  it 'can remove a book' do
    removed_book = {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'}
    @library.remove_book('POODR')
    expect(@library.books).not_to include(removed_book)
  end

  it 'can list all the books on a specific subject' do
    selected_books = @library.all_books_by_subject('Ruby')
    expect(selected_books.length).to eq(2)
    expect(selected_books).to include( {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'} )
    expect(selected_books).to include( {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'} )
  end
end
