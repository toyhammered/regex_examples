require_relative '../spec/spec_helper'

describe CaseConverter do

  before(:each) do
    @case_converter = CaseConverter.new
  end

  it 'lowercases the first character of a string' do
    @case_converter.lowercase_character("Method").should == "method"
  end

  it 'adds an underscore in front of any capitalized letter then downcases' do
    @case_converter.add_underscores("someMethodName").should == "some_method_name"
  end

  it 'converts CamelCase to snake_case' do
    @case_converter.camel_to_snake("SomeMethodName").should == "some_method_name"
  end

end
