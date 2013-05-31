module PowerSQL
  class DSL
    def initialize(arel_table)
      @arel_table = arel_table
    end

    def method_missing(method)
      if column = @arel_table[method]
        column
      else
        nil
      end
    end
  end
end
