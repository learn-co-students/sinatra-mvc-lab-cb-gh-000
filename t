
[1mFrom:[0m /home/rowlandjl/sinatra-mvc-lab-cb-gh-000/models/piglatinizer.rb @ line 12 PigLatinizer#piglatinize:

     [1;34m5[0m: [32mdef[0m [1;34mpiglatinize[0m(string)
     [1;34m6[0m:   string = string.split([31m[1;31m'[0m[31m[1;31m'[0m[31m[0m)
     [1;34m7[0m:   [32mif[0m string.first.downcase.match([35m[1;35m/[0m[35m[bcdfghjklmnpqrstvwxyz][1;35m/[0m[35m[0m) && string[[1;34m1[0m].downcase.match([35m[1;35m/[0m[35m[bcdfghjklmnpqrstvwxyz][1;35m/[0m[35m[0m) && string[[1;34m2[0m].downcase.match([35m[1;35m/[0m[35m[bcdfghjklmnpqrstvwxyz][1;35m/[0m[35m[0m)
     [1;34m8[0m:     first = string.shift
     [1;34m9[0m:     second = string.shift
    [1;34m10[0m:     third = string.shift
    [1;34m11[0m:     [31m[1;31m"[0m[31m#{string.join}[0m[31m#{first}[0m[31m#{second}[0m[31m#{third}[0m[31may[1;31m"[0m[31m[0m
 => [1;34m12[0m:     binding.pry
    [1;34m13[0m:   [32melsif[0m string.first.downcase.match([35m[1;35m/[0m[35m[bcdfghjklmnpqrstvwxyz][1;35m/[0m[35m[0m) && string[[1;34m1[0m].downcase.match([35m[1;35m/[0m[35m[bcdfghjklmnpqrstvwxyz][1;35m/[0m[35m[0m)
    [1;34m14[0m:     first = string.shift
    [1;34m15[0m:     second = string.shift
    [1;34m16[0m:     [31m[1;31m"[0m[31m#{string.join}[0m[31m#{first}[0m[31m#{second}[0m[31may[1;31m"[0m[31m[0m
    [1;34m17[0m:     [1;34m# binding.pry[0m
    [1;34m18[0m:   [32melsif[0m string.first.downcase.match([35m[1;35m/[0m[35m[bcdfghjklmnpqrstvwxyz][1;35m/[0m[35m[0m)
    [1;34m19[0m:     first = string.shift
    [1;34m20[0m:     [31m[1;31m"[0m[31m#{string.join}[0m[31m#{first}[0m[31may[1;31m"[0m[31m[0m
    [1;34m21[0m:     [1;34m# binding.pry[0m
    [1;34m22[0m:   [32melsif[0m string.first.downcase.match([35m[1;35m/[0m[35m[aeoui][1;35m/[0m[35m[0m)
    [1;34m23[0m:     [31m[1;31m"[0m[31m#{string.join}[0m[31mway[1;31m"[0m[31m[0m
    [1;34m24[0m:     [1;34m# binding.pry[0m
    [1;34m25[0m:   [32melse[0m
    [1;34m26[0m:     string.join
    [1;34m27[0m:     [1;34m# binding.pry[0m
    [1;34m28[0m:   [32mend[0m
    [1;34m29[0m: [32mend[0m

