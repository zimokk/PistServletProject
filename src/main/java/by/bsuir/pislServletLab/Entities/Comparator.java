package by.bsuir.pislServletLab.Entities;

import java.util.ArrayList;
import java.util.List;

public class Comparator {
    private double[] values;
    private double firstBound;
    private double secondBound;
    private int divider;
    private boolean isPositive;

    public Comparator(double[] values, double firstBound, double secondBound, int divider, boolean isPositive) {
        this.values = values;
        this.firstBound = firstBound;
        this.secondBound = secondBound;
        this.divider = divider;
        this.isPositive = isPositive;
    }

    public List<Double> compare(){
        List<Double> tempArray = null;
        if(this.values != null && this.values.length > 0){
            tempArray = new ArrayList<Double>();
            for (double value : this.values) {
                Number temp = new Number(value);
                if (temp.isBelong(this.firstBound, this.secondBound) && temp.isDivider(this.divider) && temp.isPositive() == this.isPositive) {
                    tempArray.add(temp.getValue());
                }
            }
        }
        return tempArray;
    }
}
