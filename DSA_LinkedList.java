package practice_core_java;

class Node {
    int data;
    Node next; 

    Node(int data) {
        this.data = data;
        this.next = null;  // Initialize next to null
    }
}

class LinkedList {
    Node head = null, tail = null;

    public void insert(int data) {
        Node node = new Node(data);
        if (head == null) {  // If the list is empty, set both head and tail to the new node
            head = node;
            tail = node;
        } else {
            tail.next = node;  // Link the previous node to the new node
            tail = node;       // Update tail to the new node
        }
    }

    public void show() {
        Node temp = head;  // Start from the head
        while (temp != null) {
            System.out.print(temp.data + " -> ");
            temp = temp.next;  // Move to the next node
        }
        System.out.println("null");  // End of the list
    }
}

class Sample {
    public static void main(String[] args) {
        LinkedList obj = new LinkedList();
        obj.insert(69);
        obj.insert(70);
        obj.insert(71);
        obj.insert(78);
        obj.show();  // Output: 69 -> 70 -> 71 -> 78 -> null
    }
}
