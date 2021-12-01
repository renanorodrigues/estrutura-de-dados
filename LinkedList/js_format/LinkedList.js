import { Node } from './Node.js';

export class LinkedList {
  constructor(head){
    if(head instanceof Node){
      this.head = head;
    }else{
      this.head = null;
    }
  }

  push(data){
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