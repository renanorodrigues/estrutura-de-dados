import { Node } from './Node.js';

export class LinkedList {
  constructor(head){
    if(head instanceof Node){
      this.head = head;
    }else{
      this.head = null;
    }
  }

  insert(data){
    var node = new Node(data, null);

    if(this.head){
      var pointer = this.head;
      
      while(pointer.next){
        pointer = pointer.next;
      }
      
      pointer.next = node;
    }else{
      this.head = node;
    }
  }

  remove(data){
    if(!this.head) throw new Error("Dont exists any node in this linked list to remove!");

    if(this.head.data == data){
      this.head = this.head.next;
    }else{
      var previos_node = this.head;
      var pointer = previos_node.next;

      while(pointer){
        if(pointer.data == data){
          previos_node.next = pointer.next;
          pointer.next = null;
          return true;
        }

        previos_node = pointer;
        pointer = pointer.next;
      }

      console.log(`${data} not find in this list!`);
      return false;
    }
  }

  printLinkedList(){
    if(this.head){
      var pointer = this.head;

      while(pointer){
        console.log(pointer.data);
        pointer = pointer.next;
      }
    }else{
      throw new Error("Dont exists any node in this linked list!");
    }
  }
}