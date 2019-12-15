class SecretCodeGenerator
  include UniqCodeGenerator

  def initialize(count = 10)
    @count = count.to_i
  end

  def perform!
    secret_codes = []
    @count.times do |i|
      secret_codes << SecretCode.new(code: generate_access_token)
    end
    SecretCode.import secret_codes
  end
end
