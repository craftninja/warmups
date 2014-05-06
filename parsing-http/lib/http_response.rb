class HttpResponse
  def initialize(http_response)
    @response = http_response
  end

  def headers
    pre_headers = @response.lines
    pre_headers.shift if pre_headers[0] == "\n"
    headers = {}
    pre_headers.each do |pre_header|
      break if pre_header == "\n"
      pre_header.lstrip!.chomp!
      header_combo = pre_header.split(': ')
      if header_combo.length == 2
        headers[header_combo[0]] = header_combo[1]
      end
    end
    headers
  end

  def body
    body = @response[/<.*\z/m]
  end

end
