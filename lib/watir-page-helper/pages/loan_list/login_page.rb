$LOAD_PATH << './lib/watir-page-helper/pages/loan_list/'
require 'watir-page-helper'

module WatirPageHelper::LoanList
  module LoginPage
    extend WatirPageHelper::ClassMethods
    
    direct_url "it.loanlist.qwinixtech.com/"
     
    def wait_for_home_page
        @browser.input(:xpath, "//div[1]/form/div[1]/div/input").wait_until_present
    end
    
    #to click the signin button from loanlist page
    def create_loanreq
        wait_for_home_page
        sleep 5
        @browser.input(:xpath, "//div[1]/form/div[1]/div/input").when_present.send_keys "5000000"
        @browser.select_list(:name, "loan_type").select "Construction Draw"
        @browser.select_list(:xpath, "//form/div[3]/div/select").select "Speculative"
        # if @browser.radio(:xpath, "//div[4]/div[1]/div[2]/label[2]/span").set?
        if @browser.radio(:id, "is_broker_false").set?
           @browser.button(:xpath,"//div[2]/div/div[1]/form/div[5]/button").when_present.click
           sleep 5
          return "Broker Radio button default is NO"
          # @browser.button(:xpath,"//div[2]/div/div[1]/form/div[5]/button").when_present.click
        else
          raise "Are you broker? radio button has no default value!"
        end
        raise "Unable to proceed with Loan tiles" if @browser.div(:xpath, "//div[2]/div/div[1]/div/div[1]/div[1]/div").exists?
        #@browser.span(:xpath,"//div[2]/div/div[1]/form/div[5]/button/span").when_present.click
    end

    def loan_tiles
        sleep 3
        @browser.select_list(:name, "rate_type").select "Variable"
        # @browser.select_list(:xpath,"//div[2]/div/form/div[1]/div/select").select "Variable"
        sleep 3
        @browser.input(:xpath,"//div[2]/div/form/div[2]/div/input").when_present.select "500"
        sleep 2
        @browser.input(:xpath,"//div[2]/div/form/div[3]/div/input").when_present.select "8000"
        sleep 2
        @browser.input(:xpath,"//div[1]/div[2]/div/div[2]/button").when_present.click
        raise "Unable to locate Create account tile" if @browser.div(:xpath, "//div[2]/div/div[1]/div/div[1]/div[3]/div").exists?
    end

    def create_accnt
        sleep 3
        @browser.input(:xpath,"//div[3]/div/form/div[1]/div/div[1]/input").when_present.send_keys "Shimith"
        sleep 2
        @browser.input(:xpath,"//div[3]/div/form/div[1]/div/div[2]/input").when_present.send_keys "lal"
        sleep 2
        @browser.input(:xpath,"//div[1]/div[3]/div/form/div[2]/input").when_present.send_keys "slal1@yopmail.com"
        sleep 2
        @browser.input(:xpath,"//div[1]/div[3]/div/form/div[3]/input").when_present.send_keys "Qwinix123"
        sleep 2
        @browser.input(:xpath,"//div[1]/div[3]/div/form/div[4]/input").when_present.send_keys "4563456345"
        sleep 3
        @browser.input(:xpath,"//div[1]/div[3]/div/div[2]/button").when_present.click
        # raise "Unable to locate Create account tile" if @browser.div(:xpath, "//div[2]/div/div[1]/div/div[1]/div[3]/div").exists?
        sleep 3
    end















  end
end
