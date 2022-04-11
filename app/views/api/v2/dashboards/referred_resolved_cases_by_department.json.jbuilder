if @stats.empty?
  json.data do
    json.set!("stats", {})
  end
else
  json.data do
    @stats.each do |key, value|
      if key.to_s.eql?("permission")
        json.set!(key, value)
      else
        json.stats do
          json.set!(key, value)
        end
      end
    end
  end
end