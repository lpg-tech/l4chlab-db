# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'manufacturers/show', type: :view do
  before(:each) do
    @manufacturer = assign(:manufacturer, Manufacturer.create!(
                                            name: 'Name',
                                            description: 'MyText',
                                            mid: 'Mid',
                                            uid: 'Uid',
                                            bur: 'Bur'
                                          ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Mid/)
    expect(rendered).to match(/Uid/)
    expect(rendered).to match(/Bur/)
  end
end
