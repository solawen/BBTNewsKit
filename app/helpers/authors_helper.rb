module AuthorsHelper
  def author_selection_field_dict
    authors = Author.all
    dict = {}
    authors.each do |author|
      dict["#{author.name}-#{author.display_name}"] = author.id
    end

    dict
  end
end
