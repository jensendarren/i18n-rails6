require "rails_helper"

describe "welcome/index" do
  it "displays welcome in header" do
    render

    expect(rendered).to match I18n.t('widget_title')
  end
end