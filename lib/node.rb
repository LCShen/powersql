module PowerSQL
  module Node
    def self.included(base)
      base.class_eval <<-EOF
        alias & and
        alias | or
      EOF
    end
  end
end


Arel::Nodes::Node.send :include, PowerSQL::Node
