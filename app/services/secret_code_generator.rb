class SecretCodeGenerator

  def initialize(count = 10)
    @count = count.to_i
  end

  def perform!
    secret_codes = []
    @count.times do |i|
      secret_codes << SecretCode.new
    end
    SecretCode.import secret_codes
  end
end
