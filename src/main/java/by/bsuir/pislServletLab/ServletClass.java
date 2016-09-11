package by.bsuir.pislServletLab;

import by.bsuir.pislServletLab.Entities.Comparator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/index")
public class ServletClass extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        System.out.print("get");
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        boolean isPositive = false;
        int divider = 0;
        double maxValue = 0, minValue = 0;
        if(req.getParameter("divider") != null){
            divider = Integer.parseInt(req.getParameter("divider"));
        }
        if(req.getParameter("value") != null){
            isPositive = req.getParameter("value").equals("Positive");
        }
        if(req.getParameter("minValue") != null){
            minValue = Double.parseDouble(req.getParameter("minValue"));
        }
        if(req.getParameter("maxValue") != null){
            maxValue = Double.parseDouble(req.getParameter("maxValue"));
        }

        String numbers = req.getParameter("numbers");
        if(numbers.split(",").length > 0){
            double[] array = new double[numbers.split(",").length];

            int i = 0;
            for(String item : numbers.split(",")){
                try {
                    array[i++] = Double.parseDouble(item);
                }
                catch (Exception ex){
                    array = null;
                }
            }
            if(array == null){
                req.setAttribute("error","Error occurred during numbers input");
            }else{
                if(minValue > maxValue){
                    req.setAttribute("error","Error occurred during bounds input");
                }
                else {
                    List<Double> list = new Comparator(array,minValue,maxValue,divider,isPositive).compare();
                    req.setAttribute("list",list);
                }
            }
        }else{
            req.setAttribute("error","You didn't enter numbers");
        }

        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

}
