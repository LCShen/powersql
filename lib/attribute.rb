module PowerSQL
  module Attribute

    def self.included(base)
      base.class_eval <<-EOF
        alias == eq
        alias != not_eq
        alias =~ matches
        alias !~ does_not_match
        alias < lt
        alias <= lteq
        alias > gt
        alias >= gteq
        alias >> in
        alias << not_in
      EOF
    end
  end
end

Arel::Attributes::Attribute.send :include, PowerSQL::Attribute
