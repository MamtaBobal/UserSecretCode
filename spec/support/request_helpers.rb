def response_status
  response.status
end

def response_size
  JSON.parse(response.body).count
end
