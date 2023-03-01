require "rails_helper"

RSpec.describe "layouts/application" do
  it "shows a custom title" do
    view.instance_variable_get(:@view_flow).set(:page_title, "Test Title")
    render
    expect(rendered).to have_title("Test Title")
  end
end
