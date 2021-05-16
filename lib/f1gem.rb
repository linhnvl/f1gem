require "httparty"
require "terminal-table"

class F1gem
  def self.execute repo_name
    results = HTTParty.get("https://api.github.com/search/repositories?q=#{repo_name}&per_page=10&page=1").parsed_response
    rows = []
    results["items"].each.with_index(1) do |item, index|
      rows << [index, item["full_name"], item["stargazers_count"], item["html_url"]]
    end
    table = Terminal::Table.new :title => "F1gem", :headings => ["no", "full_name", "stars", "url"], :rows => rows
    puts table
  end
end
