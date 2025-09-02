def progress
  0.step(by: 10, to: 100) do |percent|
    yield(percent)
  end
end

progress { |percent| puts percent }
