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

code2 = <<'END'
puts(1OO+%!eval(s=%w(!+s+%!)*'')!)
END
# いきなりputsすると幅が狭まる

# 改行、空白文字抜き
code = code.split.join

# いつもの
code = 'eval(%w(' + code + ')*"")'

code2 = 'eval(s=%w(' + code2 + %!)*"")!

# AAからの置き換え
puts code2
code = aa.gsub("#") { code.slice!(0, 1)}
code2 = aa.gsub("#") { code2.slice!(0, 1)}

# 出力
puts code2