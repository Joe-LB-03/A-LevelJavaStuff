/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfacepractice;

/**
 *
 * @author l-bishop
 */
public interface IThreeDimensional extends Shape {
    double Depth();
    default double Volume()
    {
        return Area()*Depth();
    }
}
