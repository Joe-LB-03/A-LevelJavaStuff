/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package binarytreepractice;

/**
 *
 * @author l-bishop
 */
public class BinaryTreePractice {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
    {
        BinaryTree bt = new BinaryTree();
        bt.newNode("12");
        bt.newNode("8");
        bt.newNode("+");
        bt.newNode("4");
        bt.newNode("*");

        System.out.println("\n");
        bt.postOrderTraversal(bt.root);  
        System.out.println(bt.myStack.pop());
    }
    
}
