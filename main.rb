def draw_button(settings, is_dark_mode)
    if is_dark_mode
        settings.darken_foreground
    else
        settings.lighten_foreground
    end
end

class Point
    attr_reader :x, :y

    def initialize(x, y)
        @x = x
        @y = y
    end
end

class ScreenSettings
    attr_reader :label_text, :point, :foreground_color

    def initialize(label_text, point, foreground_color)
        @label_text = label_text
        @point = point
        @foreground_color = foreground_color
    end

    def darken_foreground
        paint(label_text, point, foreground_color - 10, '#111111')
    end
    
    def lighten_foreground
        paint(label_text, point, foreground_color + 10, '#E0E0E0')
    end
end