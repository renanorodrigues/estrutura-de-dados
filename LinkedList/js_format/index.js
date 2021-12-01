import { Node } from './Node.js';
import { LinkedList } from './LinkedList.js';

var node = new Node(2);
var linked_list = new LinkedList(node);
linked_list.push(33);
linked_list.push(34);
linked_list.printLinkedList();