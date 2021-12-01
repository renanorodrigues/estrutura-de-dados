export class Node {
  constructor(data, next_node=null){
    this.data = data
    this.next_node = next_node // References the next node
  }

  set next(node){
    if(node instanceof Node){
      this.next_node = node;
    }else{
      this.next_node = null;
    }
  }

  get next(){
    return this.next_node;
  }
}