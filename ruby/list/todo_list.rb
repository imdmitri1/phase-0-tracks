class TodoList 
    def initialize(a)
        @list = a
        # @list.push(a)
    end

    def get_items
        @list
    end

    def add_item(str1)
        @list.push(str1)
    end

    def delete_item(str2)
        @list.delete(str2)
    end

    def get_item(num)
        get_items[num]
    end
    # def get_item(num)
    #     @list[num]
    # end

end
