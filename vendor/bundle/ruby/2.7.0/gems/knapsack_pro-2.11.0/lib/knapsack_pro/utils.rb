module KnapsackPro
  class Utils
    def self.unsymbolize(obj)
      JSON.parse(obj.to_json)
    end
  end
end
