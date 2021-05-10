def draw_button(label_text, x, y, foreground_color, is_dark_mode)
    if is_dark_mode
        darken_foreground(label_text, x, y, foreground_color)
    else
        lighten_foreground(label_text, x, y, foreground_color)
    end
end

def darken_foreground(label_text, x, y, foreground_color)
    paint(label_text, x, y, foreground_color - 10, '#111111')
end

def lighten_foreground(label_text, x, y, foreground_color)
    paint(label_text, x, y, foreground_color + 10, '#E0E0E0')
end