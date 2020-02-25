require 'library'

describe Library do
  it 'can find a specific book' do
    library = Library.new
    book = library.find_book('Eloquent JavaScript')
    expect(book[:title]).to eq('Eloquent JavaScript')
    expect(book[:author]).to eq('Marijn Haverbeke')
    expect(book[:subject]).to eq('JS')
  end

  it 'can add a new book' do
    library = Library.new
    new_book = {title: 'Ruby on Rails', author: 'unknown', subject: 'Rails'}
    library.add_book(new_book)
    expect(library.books).to include(new_book)
  end

  it 'can remove a book' do
    library = Library.new
    removed_book = {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'}
    library.remove_book('POODR')
    expect(library.books).not_to include(removed_book)
  end

  it 'can list all the books on a specific subject' do
  end
end
