import { Node } from './Node.js';
import { LinkedList } from './LinkedList.js';

var node = new Node(2);
var linked_list = new LinkedList(node);
linked_list.insert(33);
linked_list.insert(34);
linked_list.insert(35);
linked_list.remove(2);
linked_list.printLinkedList();