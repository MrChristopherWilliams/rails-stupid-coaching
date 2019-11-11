# test/system/questions_test.rb
require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "saying Why are you so annoying? results with the coach saying your question is stupid" do
    visit ask_url
    fill_in "question", with: "Why are you so annoying?"
    click_on "Ask"
  end

  test "saying I hate you coach results in the coach saying I don't care" do
    visit ask_url
    fill_in "question", with: "I hate you coach"
    click_on "Ask"
  end
end
