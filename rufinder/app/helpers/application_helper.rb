module ApplicationHelper

    def starRating(nota)
      rate = nota/2.to_i
      half = nota/2.0 - rate
      for i in 0...rate
          yield('<span class="fa fa-star checked"></span>')
      end
      if half == 0
        for i in 0...5-rate
          yield('<span class="fa fa-star"></span>')
        end
      else
        yield('<span class="fa fa-star-half-full checked"></span>')
        for i in 0...4-rate
            yield('<span class="fa fa-star"></span>')
        end
      end
    end

end
