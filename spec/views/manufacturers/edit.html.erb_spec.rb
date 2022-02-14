# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'manufacturers/edit', type: :view do
  before(:each) do
    @manufacturer = assign(:manufacturer, Manufacturer.create!(
                                            name: 'MyString',
                                            description: 'MyText',
                                            mid: 'MyString',
                                            uid: 'MyString',
                                            bur: 'MyString'
                                          ))
  end

  it 'renders the edit manufacturer form' do
    render

    assert_select 'form[action=?][method=?]', manufacturer_path(@manufacturer), 'post' do
      assert_select 'input[name=?]', 'manufacturer[name]'

      assert_select 'textarea[name=?]', 'manufacturer[description]'

      assert_select 'input[name=?]', 'manufacturer[mid]'

      assert_select 'input[name=?]', 'manufacturer[uid]'

      assert_select 'input[name=?]', 'manufacturer[bur]'
    end
  end
end
