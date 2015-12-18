#+--------------------------------------------------------------------+
#| entitas.coffee
#+--------------------------------------------------------------------+
#| Copyright DarkOverlordOfData (c) 2015
#+--------------------------------------------------------------------+
#|
#| This file is a part of Entitas
#|
#| Entitas is free software; you can copy, modify, and distribute
#| it under the terms of the MIT License
#|
#+--------------------------------------------------------------------+
#
# entitas command dispatch
#
generate = require("./generate")

module.exports =
  run: (flag, lang, args...) ->

    if flag is '-p' or flag is '--platform'
      switch lang
        when 'html5' then generate.html5 args...
        when 'csharp' then generate.csharp args...
        when 'fsharp' then generate.fsharp args...

    else
      when 'html5' then generate.html5 args...
    