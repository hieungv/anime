module FilmsHelper
  def setup_film film
    (Category.all - film.categories).each do |categories|
      film.film_categories.build(categories: categories)
    end
    film.film_categories.sort_by!{|x| x.categories.name}
  end
end
