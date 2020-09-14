# A linked list contains nodes, so we will first build nodes. Each node has a key and a next pointer. The next pointer is simply the key of the next node in the linked list.

class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

# Next, we create our linked list. It is made up of nodes, and its API needs to support a few things:
=begin
- Adding to the front (the beginning of the linked list)
- Reading the value of the item at the front
- Removing from the front
- Adding to the back (the end of the linked list)
- Reading the value of the item at the back
- Removing from the back
- Finding out whether a specific key is in the list
- Deleting an arbitrary key from the list
- Finding out whether the list is empty or not
- Finding the key of a node at a given position in the node (eg the key of the 10th node)
- Adding a node just before a given node
- Adding a node just after a given node
- Basically the above two add functions are to allow you to add a node at an arbitrary location in the linked list
- Our list also needs to have specific variables called 'head' and 'tail', whose job is to tell where the list begins and ends.
=end

class LinkedList
  # Setup head and tail

	attr_accessor :head, :tail
	def initialize(head = nil, tail = nil)
		@head = head
		@tail = tail
  end
  
  # Here we define a method to add a node to the back of the linked list.
  def add(number)

    # First we create the new node. Note that its next_node is already set to nil by default.

    node = Node.new(number)
    
    # Next, we check if our liked list already has a tail. We do this by checking the value of the tail variable.
    # If the tail variable is nil, then that means we have an empty list. So we should set up both the head and tail variables equal to our new node.
   
    if @tail == nil
    	@head = @tail = node
   
    # Otherwise, if we already have a tail, we simply set its next_node pointer to our new node and make our new node the new tail.
    
    else
    	@tail.next_node = node
    	@tail = node
    end
    
  end

# For get(index), things are a little more interesting...
# Our linked list isn't indexed, so we can't just access the node like we would in a normal array.
# Instead, we have to start at the head node and go n steps and return what we find for get(n).
# Special cases are if we have an empty linked list or the index is out of range (return an error message),

  def get(index)
    # your code here

    return "Empty linked list" if head == nil
    
    current_node = head
    (index).times do |i|
    	if current_node.next_node
    		current_node = current_node.next_node
    	elsif i < (index)
    		return "Index is out of range"
    	end
    end
    current_node.value
  end
  
# To add a node at a given index, we first need to get the existing node at that index.
# Then we shall place our new node just behind the existing node, and let its next_node point to that node. 
# The next_node pointer for the node just before our existing node will point to the new node.
# This is what I was talking about when I said 'Add a node just before a given node' in the linked list API

	def add_at(index, number)
		new_node = Node.new(number)
		
		# Check if the list is empty and return an error message
		
		if head == nil && index > 0
			return "List is empty use #add(number) instead"
			
		# Now check if the index is out of range and return an error message
		
		elsif get_node(index) == "Index is out of range"
			return get_node(index)
			
		# Now check if we're adding the node at the head
		
		elsif index == 0
			new_node.next_node = head
			@head = new_node
		
		# Now set up the pointers so our new node is inserted correctly
		
		else
			old_node = get_node(index)
			node_before_old_node = get_node(index-1)
			new_node.next_node = old_node
			node_before_old_node.next_node = new_node
		end
	end

	# To remove a node at a given index, first we need to get it.
	# We shall then set the pointer of the previous node to the node after the node we want to remove.
	# We shall also set the next pointer of the node we want to remove to nil.
	# Special cases are where our list is empty and where our index is out of range. 
	# We should also check if the user is trying to remove the head.
	
	def remove(index)
		if head == nil
			return "List is empty"
		elsif get_node(index) == "Index is out of range"
			return get_node(index)
		elsif index == 0
			@head = head.next_node
		else
			discarded_node = get_node(index)
			node_before_discarded = get_node(index - 1)
			node_before_discarded.next_node = discarded_node.next_node
			discarded_node.next_node = nil
		end
	end

# Here we shall implement our #get_node method.
# It's going to be a variation of the #get method, only it returns an object instead of a value.

	private
	
	def get_node(index)
		    return "Empty linked list" if head == nil
    
    current_node = head
    (index).times do |i|
    	if current_node.next_node
    		current_node = current_node.next_node
    	elsif i < (index)
    		return "Index is out of range"
    	end
    end
    current_node
	end
end

