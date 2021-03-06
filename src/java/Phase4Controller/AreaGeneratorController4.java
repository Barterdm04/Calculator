/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Phase4Controller;

import Phase3Model.AreaGeneratorModel3;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author dbarter1
 */
@WebServlet(name = "AreaGeneratorController4", urlPatterns = {"/agc4"})
public class AreaGeneratorController4 extends HttpServlet {
    private final static String RESULT_PAGE = "/Phase4/phase4.jsp";
 
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        AreaGeneratorModel3 agm = new AreaGeneratorModel3();
        
        String value1 = request.getParameter("value1");
        String value2 = request.getParameter("value2");
        String radius = request.getParameter("circle1");
        String base = request.getParameter("tri1");
        String height = request.getParameter("tri2");
  
        if(!(value1 == null || value1.isEmpty() || value2 == null || value2.isEmpty())){
            try{
                double num1 = Double.parseDouble(value1);
                double num2 = Double.parseDouble(value2);
                double areaRect = agm.generateAreaRectangle(num1, num2);
                request.setAttribute("areaRect", areaRect);
            }
            catch(Exception e){
                JOptionPane.showMessageDialog(null, e.getMessage());
            }
            
        }
        
        if(!(radius == null || radius.isEmpty())){
            try{
                double radiusVal = Double.parseDouble(radius);
                double areaCircle = agm.generateAreaCircle(radiusVal);
                request.setAttribute("areaCircle", areaCircle);
            }
            catch(Exception e){
                JOptionPane.showMessageDialog(null, e.getMessage());
            }
            
        }
        
        if(!(base == null || base.isEmpty() || height == null || height.isEmpty())){
            try{
                double baseVal = Double.parseDouble(base);
                double heightVal = Double.parseDouble(height);
                double areaTriangle = agm.generateAreaTriangle(baseVal, heightVal);
                request.setAttribute("areaTriangle", areaTriangle);
            }
            catch(Exception e){
                JOptionPane.showMessageDialog(null, e.getMessage());
            }
        }

        RequestDispatcher view =
                request.getRequestDispatcher(RESULT_PAGE);
        view.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
