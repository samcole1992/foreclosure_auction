class BoundingBox
  def initialize(x_cord, y_cord, width, height)
    @width = width
    @height = height
    @x_cord = x_cord
    @y_cord = y_cord
    @left = @x_cord
    @right = @x_cord + @width
    @top = @y_cord + @height
    @bottom = @y_cord
    @contains_point? = contains_point(x, y)

    
  end

newBox = BoundingBox.new(5.0, 10.0, 25.0, 50.0)
  # def left
  #   @left = @width
  # end
  #
  # def right
  #   @right =
  #
  #
  # def contains_point?(new_x,new_y)
  #   if new_x>=@x_cord && new_x>=
  #

      # def bottom
      #   bottom_x = @width + @x_cord
      #   bottom_y = @y_cord
      #   @bottom = [[@x_cord, @y_cord], [bottom_x, bottom_y]]
      # end
      #
      # def left
      #   left_x = @x_cord
      #   left_y = @height + @y_cord
      #   @left = [[@x_cord, @y_cord],[left_x,left_y]]
      # end
      #
      # def right
      #   right_x = @x_cord + @width
      #   right_y = @y_cord + @height
      #   @right = [[@bottom[1]], [right_x, right_y]]
      #
      # def top
      #   top_x = @x_cord + @height
      #   top_y = @y_cord
      #   @top = [[@left[1]], [top_x, top_y]
