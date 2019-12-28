require "spec_helper"
require "rails_helper"

describe WelcomeHelper do
  describe "#cronuts_url" do
    describe "when a custom cronuts url is NOT set" do
      it "returns the default cronuts url" do
        expect(helper.cronuts_url).to eq Rails.configuration.default_cronuts_url
      end
    end

    describe "when a custom cronuts url IS set" do
      let(:custom_cronuts_url) { 'https://google.com' }

      before do
        assign(:cronuts_url, custom_cronuts_url)
      end

      it "returns the custom cronuts url" do
        expect(helper.cronuts_url).to eq(custom_cronuts_url)
      end
    end
  end

  describe "#donuts_url" do
    describe "when a custom donuts url is NOT set" do
      it "returns the default doonuts url" do
        expect(helper.donuts_url).to eq Rails.configuration.default_donuts_url
      end
    end

    describe "when a custom donuts url IS set" do
      let(:custom_donuts_url) { 'https://google.com' }

      before do
        assign(:donuts_url, custom_donuts_url)
      end

      it "returns the custom donuts url" do
        expect(helper.donuts_url).to eq(custom_donuts_url)
      end
    end
  end

  describe "security: XSS prevention" do
    describe "when custom url does not start with 'http'" do
      let(:custom_cronuts_url) { "javascript:alert('hi');" }
      let(:custom_donuts_url) { "javascript:alert('hi');" }

      before do
        assign(:cronuts_url, custom_cronuts_url)
        assign(:donuts_url, custom_donuts_url)
      end

      it "returns the default urls" do
        expect(helper.donuts_url).to eq Rails.configuration.default_donuts_url
        expect(helper.cronuts_url).to eq Rails.configuration.default_cronuts_url
      end
    end
  end
end