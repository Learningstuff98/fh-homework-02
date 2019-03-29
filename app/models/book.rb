class Book < ApplicationRecord

  def self.search(keyword)
    if keyword.present?
      Book.where("title ILIKE ? OR author ILIKE ? OR genre ILIKE ? OR classification ILIKE ? OR book_type ILIKE ?", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%") 
    else
      Book.all
    end
  end  

  def self.classifications
    [
     'General Works - encyclopedias',
     'Philosophy, Psychology, Religion',
     'History - Auxiliary Sciences',
     'History (except American)',
     'General U.S. History',
     'Local U.S. History',
     'Geography, Anthropology, Recreation',
     'Social Sciences U',
     'Political Science V',
     'Law Z - Bibliography and Library Science',
     'Education',
     'Music',
     'Fine Arts',
     'Language and Literature',
     'Science',
     'Medicine',
     'Agriculture',
     'Technology',
     'Military',
     'Naval Science',
     'Bibliography and Library Science' 
    ]
  end

  def self.book_types
    [
      'Fiction',
      'Nonfiction'
    ]
  end  

end
