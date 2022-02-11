class App1::FetchBooksController < ApplicationController

    def index
        json_array = [{book_name: "book1"},{book_name: "book2"},{book_name: "book3"}]
        getBooks(json_array)
    end

    def getBooks(json_array)
        render json: {books: json_array}
    end

    def getBookMapping
        allotment_array = [{student_name: "student1", books:[{book_name: "book1"}]},{student_name: "student2", books:[{book_name: "book2"}]},{student_name: "student3", books:[{book_name: "book3"}]}]
        render json: {book_allotment: allotment_array}
    end
end
