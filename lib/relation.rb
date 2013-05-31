module PowerSQL
  module Relation
    def where(opts = Proc.new, *rest)
      if block_given?
        super(DSL.new(arel_table).instance_eval &opts)
      else
        super
      end
    end
  end
end

ActiveRecord::Relation.send :include, PowerSQL::Relation
