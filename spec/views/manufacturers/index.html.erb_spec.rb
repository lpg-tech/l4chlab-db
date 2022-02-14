# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'manufacturers/index', type: :view do
  before(:each) do
    assign(:manufacturers, [
             Manufacturer.create!(
               name: 'Name',
               description: 'MyText',
               mid: 'Mid',
               uid: 'Uid',
               bur: 'Bur'
             ),
             Manufacturer.create!(
               name: 'Name',
               description: 'MyText',
               mid: 'Mid',
               uid: 'Uid',
               bur: 'Bur'
             )
           ])
  end

  it 'renders a list of manufacturers' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 'Mid'.to_s, count: 2
    assert_select 'tr>td', text: 'Uid'.to_s, count: 2
    assert_select 'tr>td', text: 'Bur'.to_s, count: 2
  end
end
