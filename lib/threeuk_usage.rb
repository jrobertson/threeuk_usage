#!/usr/bin/env ruby

# file: threeuk_usage.rb

# description: Web scrapes three.co.uk for the remaining data allowance
#              #webscraper #threeuk #mobilebroadband

require 'mechanize'


class ThreeUKUsage

  attr_reader :expires, :remaining

  def initialize(url='https://www.three.co.uk/New_My3/' + 
                      'Data_allowance?id=My3_DataAllowanceHeading')

    agent = Mechanize.new

    page  = agent.get url
    page2 = agent.click(page.links[0])
    page3 = agent.click(page2.link_with(text: " Check your data allowance."))

    cols = page3.css('.balance tbody/tr[2]/td/text()').map {|x| x.to_s.strip}
    @expires = Date.strptime(cols[1][/\d+\/\d+\/\d+$/], "%d/%m/%y")
    @remaining = cols[2].to_i

  end

  def to_h()
    {expires: @expires, remaining: @remaining}
  end

end
