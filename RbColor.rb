# Library      : RbColor
# Language     : Ruby
# Version      : 1.0.0
# Auther       : Ayman Mahmoud Alaiwah    
# Facebook     : https://www.fb.com/ProgAymanAlaiwah
# GitHub       : https://github.com/ProgAymanAlaiwah
#---------------------------------------------------#

class String
    def set_code_color(code_color) return  "\x1b[1;#{code_color};40m#{self}\x1b[0m" end 
    def set_code_bg(code_color) return  "\033[#{code_color}m#{self}\033[00m" end

    # Function Edit Fonts Text
    def text_bold() return "\e[1m#{self}\e[21m" end
    def text_underline() return "\e[4m#{self}\e[24m" end

    # Function Edit Text Color 
    def white()   return set_code_color(97) end
    def black()   return set_code_color(30) end
    def red()     return set_code_color(31) end
    def green()   return set_code_color(32) end
    def yellow()  return set_code_color(33) end
    def blue()    return set_code_color(34) end
    def magenta() return set_code_color(35) end
    def cyan()    return set_code_color(36) end
    def gray()    return set_code_color(90) end
    
    # Fucntion Edit Background Text 
    def bg_white()   return set_code_bg(107) end
    def bg_black()   return set_code_bg(40)  end
    def bg_red()     return set_code_bg(41)  end
    def bg_green()   return set_code_bg(42)  end
    def bg_yellow()  return set_code_bg(43)  end
    def bg_blue()    return set_code_bg(44)  end
    def bg_magenta() return set_code_bg(45)  end
    def bg_cyan()    return set_code_bg(46)  end
    def bg_gray()    return set_code_bg(100) end
end

# Show All Function Text Color And Background Color 
def showColor()
    # Array Content All Function Color And Background Color 
    colors ={
                'Text'=>[
                    'white'.white(),
                    'black'.black(),
                    'red'.red(),
                    'green'.green(),
                    'yellow'.yellow(),
                    'blue'.blue(),
                    'magenta'.magenta(),
                    'cyan'.cyan(),
                    'gray'.gray()
                ],
                'Bg'=>[
                    'bg_white'.bg_white(),
                    'bg_black'.bg_black(),
                    'bg_red'.bg_red(),
                    'bg_green'.bg_green(),
                    'bg_yellow'.bg_yellow(),
                    'bg_blue'.bg_blue(),
                    'bg_magenta'.bg_magenta(),
                    'bg_cyan'.bg_cyan(),
                    'bg_gray'.bg_gray()
                ]
            }
    puts("------------[ Name Function Color ]-------------")
    for color in colors['Text'] do
        puts(color)
    end
    puts("------------[ Name Function Bg Color ]----------")
    for color in colors['Bg'] do 
        puts(color)
    end
end