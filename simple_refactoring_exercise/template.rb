module Template
  def template(source_template, req_id)
    # Here is the reason why I refactor the code:
    # 1. The string replacement algorithm is bad and not rubyish style, then I make change to more rubyish style.
    # 2. It took many lines, then I make change to only eats 8 lines code (13 with this comments).
    # 3. The method produce same output but I'm sure this is with the best algorithm.

    source_template.gsub!('%CODE%', req_id)
    altcode = req_id.insert(5, '-')[0..8]
    source_template.gsub!('%ALTCODE%', altcode)
  end
end
