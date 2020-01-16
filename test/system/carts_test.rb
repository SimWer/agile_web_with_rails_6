require "application_system_test_case"

class CartsTest < ApplicationSystemTestCase
  setup do
    @cart = carts(:one)
  end

  test "visiting the index" do
    visit carts_url
    assert_selector "h1", text: "Carts"
  end

  test "creating a Cart" do
    visit store_index_url

    click_on "Add to cart", match: :first



  end

  #test "updating a Cart" do
  #  visit carts_url
  #  click_on "Edit", match: :one
  #
  #  click_on "Update Cart"
  #
  #  click_on "Back"
  #end

  test "destroying a Cart" do
    visit store_index_url
    click_on 'Add to cart', match: :first
    page.accept_confirm do
      click_on 'Empty cart'
    end
  end
end
