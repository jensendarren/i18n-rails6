require "rails_helper"

feature "Acceptance Widget Behaviour" do
  describe "Visit root url" do
    let(:cronuts_text) { I18n.t('cronuts') }
    let(:donuts_text) { I18n.t('donuts') }

    describe "without any parameters" do
      before do
        visit root_path
      end

      it "should link to the default links" do
        expect(page).to have_link(nil, href: Rails.configuration.default_cronuts_url, exact_text: cronuts_text)
        expect(page).to have_link(nil, href: Rails.configuration.default_donuts_url, exact_text: donuts_text)
      end
    end

    describe "with cronuts_url parameter set to https://google.com" do
      let(:new_cronuts_url) { 'https://google.com' }

      before do
        visit root_path(cronuts_url: new_cronuts_url)
      end

      it "should have the cronuts url set to the value in the cronuts_url param" do
        expect(page).to have_link(nil, href: new_cronuts_url, exact_text: cronuts_text)
      end

      it "should have the donuts url set to the default donuts url" do
        expect(page).to have_link(nil, href: Rails.configuration.default_donuts_url, exact_text: donuts_text)
      end
    end

    describe "with donuts_url parameter set to https://google.com" do
      let(:new_donuts_url) { 'https://google.com' }

      before do
        visit root_path(donuts_url: new_donuts_url)
      end

      it "should have the donuts url set to the value in the donuts_url param" do
        expect(page).to have_link(nil, href: new_donuts_url, exact_text: donuts_text)
      end

      it "should have the cronuts url set to the default cronuts url" do
        expect(page).to have_link(nil, href: Rails.configuration.default_cronuts_url, exact_text: cronuts_text)
      end
    end

    describe "with both url parameters set to different urls" do
      let(:new_donuts_url) { 'https://google.com' }
      let(:new_cronuts_url) { 'https://wikipedia.com' }

      before do
        visit root_path(donuts_url: new_donuts_url, cronuts_url: new_cronuts_url)
      end

      it "should have both urls set to new urls" do
        expect(page).to have_link(nil, href: new_donuts_url, exact_text: donuts_text)
        expect(page).to have_link(nil, href: new_cronuts_url, exact_text: cronuts_text)
      end
    end
  end
end