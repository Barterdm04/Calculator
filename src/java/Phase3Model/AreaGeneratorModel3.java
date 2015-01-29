/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Phase3Model;

import Phase2Model.*;
import Phase1Model.*;

/**
 *
 * @author dbarter1
 */
public class AreaGeneratorModel3 {
    private final double TRIANGLE_MULTIPLIER = .5;
    
    public double generateAreaRectangle(double value1, double value2){
        double areaRectangle = value1 * value2;   
        return areaRectangle;
    }
    
    public double generateAreaCircle(double radius){
        double areaCircle = Math.PI * (radius * radius);
        return areaCircle;
    }
    
    public double generateAreaTriangle(double base, double height){
        double areaTriangle = (TRIANGLE_MULTIPLIER * base * height);
        return areaTriangle;
    }
}
