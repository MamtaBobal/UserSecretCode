module UniqCodeGenerator
  def generate_access_token
    SecureRandom.hex(8)
  end
end
