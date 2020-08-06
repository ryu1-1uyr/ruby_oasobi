aa = <<END
   ##########   
 ##          ## 
##   #    #   ##
##            ##
##   #    #   ##
##    ####    ##
 ##          ##
   ##########   
END

# プログラムの本体
code = <<'END'
    3.times {
        puts "Hello%c:-%c" % [32, 41]
    }
    ###
END

# 改行、空白文字抜き
code = code.split.join

# いつもの
code = 'eval(%w(' + code + ')*"")'

# AAからの置き換え
code = aa.gsub("#") { code.slice!(0, 1)}

# 出力
puts code