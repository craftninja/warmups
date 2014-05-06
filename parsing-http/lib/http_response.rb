class HttpResponse
  def initialize(http_response)
    @response = http_response
  end

  def headers
    pre_headers = @response.lines
    headers = {}
    pre_headers.each do |pre_header|
      break if pre_header == "\n"
      pre_header.lstrip!
      pre_header.chomp!
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

  def status_code
    code = @response.lines[0]
    code[/\d\d\d/].to_i
  end
end
