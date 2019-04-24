Then /^I wait up to (\d+) seconds for the "([^\"]*)" screen to appear$/ do |timeout, activity_name|
  wait_for_activity(activity_name, timeout: timeout.to_i)
end

Then /^I wait for the "([^\"]*)" tab to appear$/ do |tab|
  wait_for do
    query("android.widget.TabWidget descendant TextView {text LIKE[c] '#{tab}'}", :isSelected).first
  end
