/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.TranDau;

/**
 *
 * @author Admin
 */
public class LichThiDauController {
    
    
    public static List<TranDau> findAll(){
    List<TranDau> TranDauList = new ArrayList<>();

    Connection connection = null;
    Statement statement = null;
    PreparedStatement prestatement = null;
    
    try {
            //Lấy tất cả dah sách sinh viên
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/foot", "root", "244466666");

            //query
            String sql = "SELECT VD.mavongdau, "
                    + "VD.tenvongdau, "
                    + "TD.matran, "
                    + "TD.tentran, "
                    + "CLB1.tendoi tendoi1, "
                    + "CLB1.madoi madoi1, "
                    + "CLB2.tendoi tendoi2, "
                    + "CLB1.madoi madoi2, "
                    + "KQ.SVD, KQ.thoigian, "
                    + "KQ.banthang1, KQ.banthang2 "
                    + "FROM kqtd KQ JOIN trandau TD "
                    + "ON KQ.matran = TD.matran "
                    + "JOIN vongdau VD "
                    + "ON TD.mavong = VD.mavongdau "
                    + "JOIN clb CLB1 "
                    + "ON KQ.madoi1 = CLB1.madoi "
                    + "JOIN clb CLB2 ON KQ.madoi2 = CLB2.madoi "
                    + "ORDER BY VD.tenvongdau, TD.tentran";
            statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery(sql);
          
            while (resultSet.next()) {
                TranDau trandau;
                trandau = new TranDau(resultSet.getString("tendoi1"),
                        resultSet.getString("tendoi2"),
                        resultSet.getDate("thoigian"),
                        resultSet.getString("SVD"));

                TranDauList.add(trandau);
            }

        } catch (SQLException ex) {
            Logger.getLogger(LichThiDauController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                    Logger.getLogger(LichThiDauController.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(LichThiDauController.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        // Kết thúc
        return TranDauList;
    }
    
}
