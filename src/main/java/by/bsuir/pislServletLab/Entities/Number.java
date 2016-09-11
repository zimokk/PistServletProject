package by.bsuir.pislServletLab.Entities;

public class Number {
    private double value;
    public Number(double value) {
        this.value = value;
    }

    public double getValue() {
        return value;
    }

    public void setValue(double value) {
        this.value = value;
    }

    public boolean isPositive(){
        return this.value >= 0;
    }

    public boolean isDivider(int divider){
        return this.value % divider == 0;
    }

    public boolean isBelong(double firstBound, double secondBound){
        return this.value > firstBound && this.value < secondBound;
    }
}
