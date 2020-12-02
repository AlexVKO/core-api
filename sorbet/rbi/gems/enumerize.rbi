# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: ignore
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/enumerize/all/enumerize.rbi
#
# enumerize-2.3.1

module Enumerize
  def self.extended(base); end
  def self.included(base); end
end
module Enumerize::Integrations
end
module Enumerize::Integrations::RSpec
  def enumerize(attr); end
end
class Enumerize::Integrations::RSpec::Matcher
  def attributes; end
  def description; end
  def enumerized_default; end
  def enumerized_value_hash; end
  def enumerized_values; end
  def expectation; end
  def expected_attr; end
  def expected_attr=(arg0); end
  def expected_default; end
  def expected_default=(arg0); end
  def expected_i18n_scope; end
  def expected_i18n_scope=(arg0); end
  def expected_multiple; end
  def expected_multiple=(arg0); end
  def expected_predicates; end
  def expected_predicates=(arg0); end
  def expected_scope; end
  def expected_scope=(arg0); end
  def expected_values; end
  def expected_values=(arg0); end
  def failure_message; end
  def failure_message_when_negated; end
  def in(*expected_values); end
  def initialize(expected_attr); end
  def matches?(subject); end
  def matches_array_values?; end
  def matches_attribute?; end
  def matches_default_value?; end
  def matches_hash_values?; end
  def matches_i18n_scope?; end
  def matches_multiple?; end
  def matches_predicates?; end
  def matches_scope?; end
  def matches_values?; end
  def quote_values(values); end
  def sorted_values; end
  def subject; end
  def subject=(arg0); end
  def subject_class; end
  def with_default(expected_default); end
  def with_i18n_scope(expected_i18n_scope); end
  def with_multiple(expected_multiple); end
  def with_predicates(expected_predicates); end
  def with_scope(expected_scope); end
end
module RSpec
end
module RSpec::Matchers
  include Enumerize::Integrations::RSpec
end
module Enumerize::Scope
end
module Enumerize::Base
  def _enumerized_values_for_validation; end
  def _set_default_value_for_enumerized_attributes; end
  def _validate_enumerized_attributes; end
  def initialize(*arg0); end
  def read_attribute_for_validation(key); end
  def self.included(base); end
end
module Enumerize::Base::ClassMethods
  def _enumerize_module; end
  def enumerize(name, options = nil); end
  def enumerized_attributes; end
end
module Enumerize::Base::ClassMethods::Hook
  def inherited(subclass); end
end
module Enumerize::Predicates
  def enumerize(name, options = nil); end
end
class Enumerize::Predicates::Builder
  def build(klass); end
  def initialize(attr, options); end
  def names; end
  def values; end
end
module Enumerize::ActiveModelAttributesSupport
  def enumerize(name, options = nil); end
end
module Enumerize::ActiveModelAttributesSupport::InstanceMethods
  def write_attribute(attr_name, value, *options); end
end
class Enumerize::ActiveModelAttributesSupport::Type < ActiveModel::Type::Value
  def deserialize(value); end
  def initialize(attr); end
  def serialize(value); end
  def type; end
end
module Enumerize::ActiveRecordSupport
  def enumerize(name, options = nil); end
end
module Enumerize::ActiveRecordSupport::InstanceMethods
  def becomes(klass); end
  def reload(options = nil); end
  def write_attribute(attr_name, value, *options); end
end
module Enumerize::ActiveRecordSupport::RelationMethods
  def update_all(updates); end
end
class Enumerize::ActiveRecordSupport::Type < ActiveModel::Type::Value
  def as_json(options = nil); end
  def deserialize(value); end
  def encode_with(coder); end
  def init_with(coder); end
  def initialize(attr, subtype); end
  def serialize(value); end
  def type(**, &&); end
  def type_cast_for_database(value); end
  def type_cast_from_database(value); end
end
module Enumerize::Scope::ActiveRecord
  def _define_activerecord_scope_methods!(name, options); end
  def _define_activerecord_shallow_scopes!(attribute_name); end
  def enumerize(name, options = nil); end
end
module Enumerize::ModuleAttributes
  def included(base); end
end
class Enumerize::Attribute
  def default_value; end
  def define_methods!(mod); end
  def each_value; end
  def find_default_value(value); end
  def find_value(value); end
  def find_values(*values); end
  def i18n_scope; end
  def i18n_scopes; end
  def initialize(klass, name, options = nil); end
  def klass; end
  def method_missing(method); end
  def name; end
  def options(options = nil); end
  def respond_to_missing?(method, include_private = nil); end
  def skip_validations_value; end
  def values; end
end
module Enumerize::Multiple
  def define_methods!(mod); end
  def find_default_value(value); end
end
module Enumerize::Predicatable
  def method_missing(method, *args, &block); end
  def predicate_method?(method); end
  def respond_to_missing?(method, include_private = nil); end
end
class Enumerize::Value < String
  def ==(other); end
  def encode_with(coder); end
  def initialize(attr, name, value = nil); end
  def predicate_call(value); end
  def text; end
  def value; end
  include Enumerize::Predicatable
end
class Enumerize::AttributeMap
  def <<(attr); end
  def [](name); end
  def add_dependant(dependant); end
  def attributes; end
  def each; end
  def empty?; end
  def initialize; end
end
class Enumerize::Module < Module
  def _class_methods; end
  def dependent_eval(&block); end
  def included(klass); end
  def initialize; end
end
module Enumerize::Hooks
end
module Enumerize::Hooks::UniquenessValidator
  def validate_each(record, name, value); end
end