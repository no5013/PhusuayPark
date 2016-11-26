require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post :create, book: { checkin_date: @book.checkin_date, checkout_date: @book.checkout_date, contact_email: @book.contact_email, contact_message: @book.contact_message, contact_name: @book.contact_name, contact_phone: @book.contact_phone, delux_double_num: @book.delux_double_num, delux_num: @book.delux_num, suite_num: @book.suite_num, supreme_double_num: @book.supreme_double_num, supreme_num: @book.supreme_num }
    end

    assert_redirected_to book_path(assigns(:book))
  end

  test "should show book" do
    get :show, id: @book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
  end

  test "should update book" do
    patch :update, id: @book, book: { checkin_date: @book.checkin_date, checkout_date: @book.checkout_date, contact_email: @book.contact_email, contact_message: @book.contact_message, contact_name: @book.contact_name, contact_phone: @book.contact_phone, delux_double_num: @book.delux_double_num, delux_num: @book.delux_num, suite_num: @book.suite_num, supreme_double_num: @book.supreme_double_num, supreme_num: @book.supreme_num }
    assert_redirected_to book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book
    end

    assert_redirected_to books_path
  end
end
