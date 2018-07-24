def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT DISTINCT books.title, books.year FROM series INNER JOIN books on books.series_id = 1 ORDER BY books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY LENGTH(motto) DESC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, count(characters.species) FROM characters GROUP BY species ORDER BY count(species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors INNER JOIN series on series.author_id = authors.id INNER JOIN subgenres on series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series INNER JOIN characters on characters.series_id = series.id WHERE characters.species = 'human' GROUP BY characters.series_id ORDER BY count(characters.series_id) DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, count(character_books.book_id) FROM characters INNER JOIN character_books ON character_books.character_id = characters.id GROUP BY character_books.character_id ORDER BY count(character_books.book_id) DESC, characters.name"
end
