module Template
  def template(source_template, req_id)
    source_template.gsub!('%CODE%', req_id)
    altcode = req_id.insert(5, '-')[0..8]
    source_template.gsub!('%ALTCODE%', altcode)
  end
end
