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

        int divider = Integer.parseInt(req.getParameter("divider"));
        boolean isPositive = req.getParameter("value").equals("Positive");
        double minValue = Double.parseDouble(req.getParameter("minValue"));
        double maxValue = Double.parseDouble(req.getParameter("maxValue"));
        String numbers = req.getParameter("numbers");
        double[] array = new double[numbers.length()];

        int i = 0;
        for(String item : numbers.split(",")){
            array[i++] = Double.parseDouble(item);
        }
        List<Double> list = new Comparator(array,minValue,maxValue,divider,isPositive).compare();
        req.setAttribute("list",list);

        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

}
