require "timeout"
 
RSpec::Matchers.define :become_true do |field_name|
  match do |block|
    begin
      Timeout.timeout(Capybara.default_wait_time) do
        sleep(0.1) until value = block.call
        value
      end
    rescue TimeoutError
      false
    end
  end

  def supports_block_expectations?
    true
  end
end
