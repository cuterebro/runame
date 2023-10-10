# frozen_string_literal: true

RSpec.describe Runame do
  it 'has a version number' do
    expect(Runame::VERSION).not_to be nil
  end

  it 'should match common names and do not match uncommon' do
    good_names = ['Борис', 'Зульфия', 'Джон']
    good_names.each do |name|
      expect(Runame.is_name?(name)).to be true
    end
  end

  it 'should not match uncommon names' do
    bad_names = ['Тугарин', 'Дрочеслав', 'Вивиан']
    bad_names.each do |name|
      expect(Runame.is_name?(name)).to be false
    end
  end

  it 'should not match empty string' do
    expect(Runame.is_name?('')).to be false
  end
end
